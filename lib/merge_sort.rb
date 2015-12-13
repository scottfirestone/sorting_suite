class MergeSort

  def validation(array)
    return nil if array.length == 0
    return array if array.length == 1
  end

  def merge_sort(array)
    return array if array.length == 1
    array.each_slice(array.(length/2)).to_a
    merge_sort(array)

  end
end
