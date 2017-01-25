array = Array (0..10)
secret_number = array.sample
guess = array.sample
guesses = []

until guess == secret_number
  puts "Guess is #{guess} \n Guess again!"
  if guesses.include?(guess) == false
    guesses << guess
    array.delete(guess)
  end
  guess = array.sample
end

puts "Guess is #{guess} \n You win!"
