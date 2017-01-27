# pseudocode
# 1. for array of length n, compare value at index(0) to value at index(1)
  # if val@index(0) > val@index(1)
    # swap the 2
  # else
    # keep them in position
# 2. repeat previous conditional with val@index(1) >? val@index(2)
# 3. continue to progress through vals@indices until comparing val@index(n-2) >? val@index(n-1)
# 4. go back to the beginning of the loop and repeat steps 1.-3. until each val@index < val@index+1
  
require "pry"

class BubbleSort
  def sort(collection)
    n = collection.length
    next_index = 0
    n.times do 
      index = n - n
      next_index = n - n + 1
      until next_index == collection.length
        if collection[index] > collection[next_index]
          unordered_val = collection.slice!(next_index)
          collection.insert(index,unordered_val)
        end
        index += 1
        next_index += 1
      end
    end
    collection
  end
end


sorter = BubbleSort.new
puts sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]