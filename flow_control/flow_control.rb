puts "Welcome! What's your age? "

user_age = gets.chomp.to_i

if user_age > 21
    puts "Come on in!"
elsif user_age == 21
    puts "Happy birthday, come on in!"
else
    puts "Scram!"
end

