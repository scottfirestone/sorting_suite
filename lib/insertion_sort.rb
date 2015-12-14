require 'pry'

class InsertionSort

  def sort(unsorted_array)
    if unsorted_array == nil
      p "I'm sorry Dave, I'm afraid I can't do that."
    else
      sorted_array = []
      unsorted_array.each do |element|
        index = 0
        insert = false
        while insert == false
          if sorted_array[index] == nil
            sorted_array << element
            insert = true
          elsif element > sorted_array[index]
            index +=1
          else
            sorted_array.insert(index, element)
            insert = true
          end
        end
      end
      sorted_array
    end
  end
end
