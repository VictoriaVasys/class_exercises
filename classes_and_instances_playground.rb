# class Fridge
#   def initialize(brand, color, temperature, plugged_in, contents)
#     @brand       = brand
#     @color       = color
#     @temperature = temperature
#     @plugged_in  = plugged_in
#     @contents    = contents
#   end
# end

# fridge_1  = Fridge.new("Maytag", "white", 36, true, ["leftover pizza", "yogurt", "soylent"])
# p "Number 1: #{fridge_1}"

# fridge_2   = Fridge.new("Lala", "", 32, "", ["mustard", "sriracha"])
# p "Number 2: #{fridge_2}"

# p fridge_1.color

# fridge_3 = Fridge.new
# p "Number 3: #{fridge_3}"


# class DrinkingVessels
# end

# coffee_cup = DrinkingVessels.new
# p "coffee cup: #{coffee_cup}"

# water_glass = DrinkingVessels.new
# p "water glass: #{water_glass}"

# soda_can = DrinkingVessels.new
# p "soda can: #{soda_can}"



require "date"
require "pry"

class Person
  attr_reader :name, :birthdate, :language
  # attr_writer :alive; accessor below is a reader/writer
  attr_accessor :alive

  def initialize(name, birthdate, language, alive)
    @name = name
    @birthdate = birthdate
    @language = language
    @alive = alive
  end
  
  # def name
  #   @name
  # end
  # above is a "getter method"; replaced by attr_reader at the top

  def age
    jday = DateTime.now.jd - @birthdate.jd ### NEEDS WORK
    DateTime.jd(jday)
  end

  def add_language(lang)
    @language << lang
  end
  
  # def alive = (new_alive)
  #   @alive = new_alive
  # end
  # above is a "setter method"; replaced by attr_writer at top

end

teddy = Person.new("teddy", DateTime.new(1972, 5, 12), "spanish", true)
coralina = Person.new("coralina", DateTime.new(1988, 8, 28), "italian", true)
ford = Person.new("ford", DateTime.new(1939, 12, 12), "english", false)

require 'pry'; binding.pry
puts "-------"