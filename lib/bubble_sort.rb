class BubbleSort

  def sort(array)
    length = array.length
    swap = true
    while swap
      swap = false
      0.upto(length-2) do |i|
        if array[i] > array[i+1]
          array[i+1], array[i] = array[i], array[i+1]
          swap = true
        end
      end
    end
    array
  end
end
