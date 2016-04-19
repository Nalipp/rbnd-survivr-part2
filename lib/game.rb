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

  def immunity_challenge
    @tribes.sample
  end

  def individual_immunity_challenge
    winning_tribe = immunity_challenge
    immune = winning_tribe.members.sample
    winning_tribe.tribal_council(immune: immune)
  end
end
