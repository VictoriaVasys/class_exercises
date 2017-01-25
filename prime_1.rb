def prime?(number)
    
    if number.class == "Float"
        puts "#{number} is not prime"
    elsif number <= 0 || number == 1 || number == 2
        puts "#{number} is not prime"
    else
        n_new = (number / 2).ceil
        number_of_non_divisibles = []
        counter = 1
        while n_new > 1 
            if number % n_new == 0
                puts "#{number} is not prime"
                n_new = 1
            else 
                number_of_non_divisibles << n_new
                # need to continue to check & make sure no % == 0; add all responses to an array?
                n_new -=1
                counter += 1
            end
        end
            if number_of_non_divisibles.count == counter/(number / 2).ceil
                puts "#{number} is a prime!"
            end
    end
end

puts prime?(163) # <= "5 is a prime number"

# pseudocode
# is the number divisible by anything?
# if even & not 2 or 0, divisible by 2; not prime
# if odd, need to pass in every odd number below half of it

# def find_primes(quantity)
#     #code
# end

# puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"