class Game
  attr_reader = :tribes

  def initialize(tribe_one, tribe_two)
    @tribes = [tribe_one, tribe_two]
  end

  def tribes
    @tribes
  end

  def add_tribe(name)
    @tribes << name
  end

  def clear_tribes
    @tribes = []
  end

  def merge(new_tribe_name)
    combined_members = []
    @tribes.each {|tribe| combined_members += tribe.members }
    Tribe.new(name: new_tribe_name, members: combined_members)
  end

  def immunity_challenge #selects a tribe at random
    @tribes.sample
  end

  def random_member #selects from a random tribe a member at random
    @tribes.sample.members.sample
  end

  def individual_immunity_challenge
    self.each { |tribe| tribe.members.delete(random_member) }
    random_member
  end
end
