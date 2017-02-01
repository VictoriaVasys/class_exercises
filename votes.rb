
class Votes
  attr_reader :array
  def initialize(array)
    @array = array
    @names = []
    @votes = []
    @strings = []
    @array_over_3000 = []
  end

  def over_3000_votes
    "#{strings.join(" and ")} have more than 3000 votes."
  end

  def strings
      array_over_3000.each do |person|
        name = person[0]
        votes = person[1]
        @strings << "#{name} (#{votes})"
      end
      @strings
  end
  
  def array_over_3000
    votes.each_with_index do |number, index|
      if number > 3000
        @array_over_3000 << @array[index]
      end
    end
    @array_over_3000
  end

  def names
    @array.each do |person|
      @names << person[0]
    end
    @names
  end

  def votes
    @array.each do |person|
      @votes << person[1]
    end
    @votes
  end



end

instructor_votes = Votes.new([["Lauren", 9872], ["Ilana", 3468], ["Beth", 4521], ["Josh", 1673]])
puts instructor_votes.over_3000_votes