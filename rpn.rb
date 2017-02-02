require "pry"

class Calculator
  attr_reader :total
  def initialize
    @total = 0
  end

  def calc(string)
    array = string.split(/ /).reverse
    operators = []
    
    first_integer_index = array.find_index {|elem| elem != '+' && elem != '-'}
    index = 0
    first_integer = array[first_integer_index]
    until array[0] == first_integer
      array.each do |operator|
        operators << array.shift
      end
    end
    
    until operator.empty?
      if operator[0] == '+'
        partial_total = array[0] + array[1]
      elsif operator[0] == '-'
        total = array[0] - array[1]
        partial_total -= 
      end
      
      # NEED TO WORK ON THIS
      current = 
      next = 
      if operator[]
      @total += total.reduce(:+)
  end

    # if operator[0] == '+'
    #   total = array[1, -1].reduce(:+)
    # elsif array.last == '-'
    #   total = array[1, -1].reduce(:-)
    # end
    # @total += total.reduce(:+)

  def clear
    @total = 0
  end

end

# binding.pry 

