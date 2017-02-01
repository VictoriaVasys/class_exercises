
require "pry"
def prime?(number)
    if number.class == "Float" || number <= 1
        # puts "#{number} is not prime"
        prime = false
    else
        n_new = (number / 2.0).ceil
        number_of_non_divisibles = []
        counter = 1
        while n_new > 1 
            if number % n_new == 0
                # puts "#{number} is not prime"
                n_new = 1
                prime = false
            else 
                number_of_non_divisibles << n_new
                n_new -= 1
                counter += 1
            end
        end
        if number_of_non_divisibles.count == (number / 2)
            # puts "#{number} is a prime!"
            prime = true
        end
    end

end


# puts prime?(5) # <= "5 is a prime number" ## RETURNS LAST VALUE OF METHOD EVALUATED AT ARG


def find_primes(quantity)
    primes = []
    x = 2
    while primes.count < quantity
        prime?(x)
        binding.pry
        if prime == true
            primes << x
        end
        x += 1
    end
    "the first #{quantity} prime numbers are #{primes}"
end

# # pseduocode
# # **find n # of the first prime numbers
# # make an empty array to hold prime numbers
# # while primes.count < n
#     # x = 3
#     # if prime?(x) returns prime = true
#         # primes << x


puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"