require 'pry'

class BubbleSort
  # attr_reader :sorted_array

  def initialize
    # @sorted_array = []
  end

  def sort(array)
    length = array.length
    swap = true
    if length <= 1
      array
    else
      while swap
        swap = false
        0.upto(length-2) do |i|
          if array[i] > array[i+1]
            array[i+1], array[i] = array[i], array[i+1]
            swap = true
          end
        end
      end
      return array
    end
  end
end
binding.pry
