class Tribe
  attr_reader :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    puts "The #{@name} tribe has been formed."
  end

  def name
    puts @name
  end

  def tribal_council(options={})
    looser = @members.select { |member| member != options[:immune]}.sample
    @members.delete(looser)
  end
end
