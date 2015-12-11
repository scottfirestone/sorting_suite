2. Insertion Sort
Big Picture
Insertion sort is a next step up from Bubble Sort. Make sure that you've successfully implemented Bubble Sort before you dive into this section.
Insertion sort uses slightly more complex logic but the algorithm is generally much higher performing than Bubble.
The Algorithm
You can see a visualization of the algorithm here.
For a high level understanding check out the wikipedia article. Insertion sort works by creating a new, empty array of results. We iterate through the set to be sorted, pulling one element at a time, then inserting it into its correct position in the new array.
Let's start with this array of numbers: [1,0,4,3,2]
Pass 1
We pull the first element from the unsorted list and insert it into the sorted list:
unsorted:      [1,0,4,3,2]
to insert:     1
sorted pre:    []
sorted post:   [1]
unsorted post: [0,4,3,2]
Pass 2
We pull the first unsorted element, the 0, and compare it to the first element of the sorted set, 1. Since the 0 before the 1, we insert it at the front of the sorted set:
unsorted:      [0,4,3,2]
to insert:     0
sorted pre:    [1]
sorted post:   [0,1]
unsorted post: [4,3,2]
Pass 3
We pull the first unsorted element, the 4, and compare it to the first element of the sorted set, 0. Since the 4 is greater, we look at the next position of the sorted set, 1. The 4 is greater but there are no other elements, so we add the 4 to the end of the sorted array.
unsorted:      [4,3,2]
to insert:     4
sorted pre:    [0,1]
sorted post:   [0,1,4]
unsorted post: [3,2]
Pass 4
We pull the first unsorted element, the 3, and compare it to the first element of the sorted set, 0. Since the 3 is greater, we look at the next position of the sorted set, 1. The 3 is greater, so we look at the next position of the sorted set, 4. The 3 is less than 4, so we insert the 3 at this position pushing the 4 to the right.
unsorted:      [3,2]
to insert:     3
sorted pre:    [0,1,4]
sorted post:   [0,1,3,4]
unsorted post: [2]
Pass 5

We pull the first unsorted element, the 2, and compare it to the first element of the sorted set, 0. Since the 2 is greater, we look at the next position of the sorted set, 1. The 2 is greater, so we look at the next position of the sorted set, 3. The 2 is less than 3, so we insert the 3 at this position pushing the 3 to the right.

unsorted:      [2]
to insert:     2
sorted pre:    [0,1,3,4]
sorted post:   [0,1,2,3,4]
unsorted post: []
Then our unsorted array is empty, meaning we're done with the algorithm.

Challenge

Implement an InsertionSort which will make the following code snippet work:

sorter = InsertionSort.new
=> #<InsertionSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]
