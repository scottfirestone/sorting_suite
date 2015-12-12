require 'minitest'
require 'insertion_sort'

class InsertionSortTest < Minitest::Test

  def setup
    @sorter = InsertionSort.new
  end

#test spec example
  def test_spec_example
    assert_equal [0, 1, 2, 3, 4], @sorter.sort([1, 0, 4, 3, 2])
  end

#test sorter is of InsertionSort class
  def test_sorter_class_type
    assert_equal InsertionSort, @sorter.class
  end

  def test_nil_passed_into_sort
    assert_nil @sorter.sort(nil)
  end

#test one value sorted to new array
  def test_one_unsorted_value_into_new_array
    assert_equal [0], @sorter.sort([0])
  end

end
