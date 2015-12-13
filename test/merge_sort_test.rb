require 'minitest'
require 'merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end

  #test project example
  def test_project_example
    assert_equal [0, 1, 2, 3], @sorter.sort([2, 0, 1, 3])
  end

  #test merge sort object existence
  def test_merge_sort_instance
    assert_equal MergeSort, @sorter.class
  end

  def test_sort_method_return_1_value
    assert_equal [0], @sorter.sort([0])
  end

  def test_sort_method_2_value_array
    assert_equal [0, 1], @sorter.sort([1, 0])
  end
end
