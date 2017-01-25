# pseudocode
# 1. for array of length n, compare value at index(0) to value at index(1)
  # if val@index(0) > val@index(1)
    # swap the 2
  # else
    # keep them in position
# 2. repeat previous conditional with val@index(1) >? val@index(2)
# 3. continue to progress through vals@indices until comparing val@index(n-2) >? val@index(n-1)
# 4. go back to the beginning of the loop and repeat steps 1.-3. until each val@index < val@index+1
  

class BubbleSort
  def sort(collection)
    n = collection.length
    index = n - n
    next_index = n - n + 1
  # until collection[index] <= collection[next_index] <= ... collection[n-1]

      until next_index == n
        if collection[index] > collection[next_index]
          not_ordered = collection.slice!(next_index)
          collection.insert(index, not_ordered)
        end
        index += 1
        next_index += 1
      end
  #  end
  end
end

    # 1. for array of length n, compare value at index(0) to value at index(1)
      # if val@index(0) > val@index(1)
        # swap the 2
      # else
        # keep them in position
    # 2. repeat previous conditional with val@index(1) >? val@index(2)
    # 3. continue to progress through vals@indices until comparing val@index(n-2) >? val@index(n-1)
    # 4. go back to the beginning of the loop and repeat steps 1.-3. until each val@index < val@index+1
  end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]