require "../lib/contestant.rb"
require "../lib/tribe.rb"

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
    # loosing_tribe = @tribes.sample
    # loosing_member = loosing_tribe.members.sample
    # loosing_tribe.members.delete(loosing_member)
    # loosing_tribe
    @tribes.sample
  end

  def individual_immunity_challenge
    immune = immunity_challenge.members.sample
    # @tribes.each do |tribe|
    #   if tribe.members.include?(immune)
    #     puts "This is the tribe that is the winning tribe with the immune player who's name is #{immune}"
    #   else
    #     puts "This is the loosing tribe #{tribe}"
    #   end
    # end
  end
end
