require 'colorizr'

class Tribe
  attr_reader :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    puts "The #{@name} have formed a tribe."
  end

  def name
    puts @name
  end

  def tribal_council(opts={})
    loosing_member = members.sample until opts[:immune] != loosing_member
    self.members.reject! { |member| member if loosing_member == member}
    loosing_member
  end

  # def tribal_council(options={})
  #   looser = @members.select { |member| member != options[:immune]}.sample
  #   @members.delete(looser)
  # end

  # def individual_immunity_challenge
  #   members.delete(members.sample)
  # end

  # def merge(new_tribe_name)
  #   combined_members = []
  #   @tribes.each {|tribe| combined_members += tribe.members }
  #   Tribe.new(name: new_tribe_name, members: combined_members)
  # end
end
