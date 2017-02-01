
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

# ### Beth's code! tactic = create a collection of all numbers smaller than that number, check each one
# def prime?(number)
#     counter = 0
#     potential_factors = (2..number/2).to_a
#     potential_factors.each do |potential_factor|
#         if number % potential_factor == 0
#             counter += 1
#         end
#     end
#     if counter == 0
#         "#{number} is a prime number"
#     else
#         "#{number} is NOT a prime number"
#     end
# end

puts prime?(13)
    
    
    ## bullshitty stuff to get momentum going:
    # I've got a number 
    # a not-prime number will be divisible by numbers than that one or one
    # create a list (array) of all numbers between 1 and half the number I'm checking
        # this is a list of potential_factors
    # go through that list, check whether my number is divisible by that number
        # number % potential_factor == 0
        # if the number is divisible by the potential_factor, increment counter
    # if it is divisible by any of those, it's NOT prime. Otherwise it is.
        # use a counter
        # if counter is greater than 0, it's not prime

#     if #something
#     "#{number} is a prime number"
#     else
#     "#{number} is NOT a prime number"
# end

