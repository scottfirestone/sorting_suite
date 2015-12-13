class MergeSort

  def sort(array)
    return array if array.length<=1
    mid_point = array.length/2
    left_slice = sort(array.slice(0, mid_point))
    right_slice = sort(array.slice(mid_point, array.length))
    new_array = []
    left_slice_index = 0
    right_slice_index = 0

    while (left_slice_index < left_slice.length) && (right_slice_index < right_slice.length)
      left_num = left_slice[left_slice_index]
      right_num = right_slice[right_slice_index]
      if (left_num < right_num)
        new_array << left_num
        left_slice_index +=1
      else
        new_array << right_num
        right_slice_index +=1
      end
    end

    while left_slice_index < left_slice.length
      new_array << left_slice[left_slice_index]
      left_slice_index += 1
    end
    while right_slice_index < right_slice.length
      new_array << right_slice[right_slice_index]
      right_slice_index += 1
    end
    new_array
  end
end
