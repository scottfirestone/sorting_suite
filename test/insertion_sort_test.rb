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

#test

end
