require "pry"

# [1,2,3,4,5,6].each do |num|
#   if num.even?
#     puts num
#   end
# end

names = ["Ilana Corson", "Lauren Fazah", "Beth Sebian"]
first_names = []
last_names = []
initials = []

names.each do |name| 
  first_last_array = name.split
  first_names << first_last_array[0]
  last_names << first_last_array[-1]
  initials << "first_last_array[0][0] + first_last_array[1][0]"
end

# puts first_names
# puts last_names
puts initials
