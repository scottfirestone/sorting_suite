1. Bubble Sort

Big Picture

Bubble Sort is often one of the first algorithms of any kind that programmers attempt. There are very few steps which make it not too difficult to implement. But it takes many instructions to actually execute -- so the performance is typically quite bad.

The Algorithm

You can see a graphical run of the algorithm here.

For a high level understanding check out the wikipedia article. Bubble sort works by comparing and possibly swapping two values in an array. Say we start with this array of numbers:

2 0 1 3 4 5
The algorithm would start with a variable previous pointing to the first element, 2 and current pointing to the second value 0. Then if current is less than previous the two values are swapped. The swap would take place in this case, because 0 is less than 2. After that single swap the sequence would be:

0 2 1 3 4 5
The algorithm would continue with previous advancing one spot to the right, to point at 2, and current advancing to point at 1. 1 is less than 2, so we swap them again to get:

0 1 2 3 4 5
Notice that the 2 moved forward two spaces. This is commonly called "bubbling up". The number being "bubbled" will always be the largest number seen up to this point.

Now, previous advances to 2, and current advances to 3. 3 is not less than 2, so the focus advances without swapping. This repeats moving right one space at a time until reaching the end of the array, meaning the largest number in the array must be in the last position.

After the second bubbling, we know that the last two items must be the two largest items in the array, and they are sorted. After the third iteration, the last 3 items are sorted. Thus we repeat the process once for each element in the array, allowing us to know that the last n items are sorted, where n is the size of the array.

Expectations

*Implement a BubbleSort class which will make the following code snippet work:

sorter = BubbleSort.new
=> #<BubbleSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]*
