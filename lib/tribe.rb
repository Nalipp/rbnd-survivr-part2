class Tribe
  attr_reader :name, :members

  def initialize(opts={})
    @name = opts[:name]
    @members = opts[:members]
    puts "The '#{name.red}' tribe has been created."
  end

  def tribal_council(opts={})
    non_immune = @members.reject { |member| member == opts[:immune] }
    loosing_member = non_immune.sample
    @members.delete(loosing_member)
  end

  def to_s
    @name
  end
end
