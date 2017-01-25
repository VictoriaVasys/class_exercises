puts "Type your message: "
message = gets.chomp

if message.length.even?
  puts "EVEN!"
else message.length.odd?
  puts "ODD!"
end
