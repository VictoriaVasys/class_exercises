puts "Enter a message and I'll tell you what it ends with: "
message = gets.chomp


if message[-1] == "a" || message[-1] == "e" || message[-1] == "i" || message[-1] == "o" || message[-1] == "u" 
    puts "VOWEL!"
elsif message[-1] == "y"
    puts "DON'T KNOW!"
else 
    puts "CONSONANT"
end