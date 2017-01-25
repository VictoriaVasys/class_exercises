5.times do |number|
  puts "This is my output line #{number + 1}"
end

counter = 1
while counter <= 5
  puts "This is my output line #{counter}"
  counter += 1
end

counter = 1
until counter > 5
  puts "This is my output line #{counter}"
  counter += 1
end