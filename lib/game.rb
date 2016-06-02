class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = []
    @tribes << tribe1
    @tribes << tribe2
  end

  def add_tribe(tribe3)
    @tribes << tribe3
  end

  def self.tribes
    @tribes
  end

  def merge(new_tribe_name)
    new_members = @tribes.map {|tribe| tribe.members }.flatten
    new_tribe = Tribe.new(name: new_tribe_name, members: new_members)
    clear_tribes
    add_tribe(new_tribe)
    new_tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def individual_immunity_challenge
    immunity_challenge.members.sample
  end

  def clear_tribes
    @tribes = []
  end
end
