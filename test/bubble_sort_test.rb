require 'minitest'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

#test to create new bubblesort object, existence
  def test_create_bubble_sort_object_existence
    assert @sorter
  end

  def test_bubble_sort_object_is_bubble_sort_class
    assert_equal BubbleSort, @sorter.class
  end

  #test sort method one value
  def test_sort_method_when_single_value_passed
    assert_equal "a", @sorter.sort("a")
  end

  #test sort method sorts array in argument, two elements
  def test_sort_method_sorts_two_items
    assert_equal ["a", "b"], @sorter.sort(["b", "a"])
  end
  #test sort method sorts array three values
  def test_sort_method_array_with_three_values
    assert_equal ["a", "b", "c"], @sorter.sort(["c", "b", "a"])
  end

  def test_sort_a_really_long_array_of_mixed_up_letters
    assert_equal ["a", "f", "p", "u", "y", "z"],@sorter.sort(["p", "u", "a", "z", "f", "y"])
  end

  def test_sorting_with_duplicates
    assert_equal ["a", "a", "b", "b", "c"], @sorter.sort(["b", "a", "a", "c", "b"])
  end
end
