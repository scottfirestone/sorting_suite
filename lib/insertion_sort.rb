require 'pry'

class InsertionSort

  def sort(unsorted_array)
    if unsorted_array == nil
      puts "I'm sorry Dave, I'm afraid I can't do that."
    else
      sorted_array = []
      swap = true
      unsorted_array.each do |element|
        index = 0
        swap = false
        while swap == false
          if sorted_array[index] == nil
            sorted_array << element
            swap = true
          elsif element > sorted_array[index]
            index +=1
          else
            sorted_array.insert(index, element)
            swap = true
          end
        end
      end
      sorted_array
    end
  end
end
