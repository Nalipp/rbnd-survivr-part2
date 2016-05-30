require 'colorizr'

class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(contestant)
    @members << contestant
  end

  def cast_votes(finalist)
    @finalists = Hash[finalist.map {|name| [name, 0]}]

    @members.map do |member|
      vote = finalist.sample
      puts "#{member} voted for" + " #{vote}.".green
      @finalists[vote] += 1
    end
    @finalists
  end

  def report_votes(final_votes)
    final_votes.each { |finalist,votes| puts "#{finalist} recieved #{votes} votes" }
  end

  def announce_winner(final_votes)
    winner = final_votes.max_by{|k,v| v}[0]
    puts "The winner is #{winner.to_s}".blue
    winner
  end
end
