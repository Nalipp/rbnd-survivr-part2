class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def members
    @members
  end

  def cast_votes(finalist)
    @finalists = Hash[finalist.map {|name| [name, 0]}]

    @members.map do |member|
      keys = @finalists.keys
      vote = keys[rand(keys.size)]
      puts "#{member} voted for #{vote}."
      @finalists[vote] += 1
    end
    @finalists
  end

  def report_votes(final_votes)
    final_votes.each { |finalist, votes| puts "#{finalist} recieved " + votes.to_s + " votes." }
  end

  def announce_winner(final_votes)
    winner = final_votes.key(final_votes.values.max)
    puts "#{winner} is the winner with " + final_votes.values.max.to_s + " votes."
    return winner
  end
end
