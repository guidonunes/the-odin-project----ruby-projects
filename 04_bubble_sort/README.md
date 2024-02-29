# Project: Bubble Sort - Ruby Course

## Assignment

Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

## My Solution

* Create a function called bubble_sort that takes arr as parameter;
* Create arr_length variable and assigned the size of arr to it;
* Return arr if the size of arr is less or equal than one, as it is already sorted;
* Add a loop to iterate until no more swaps are needed;
* Add swapped variable to track if any swap was made in the pass;
* Implement each do method to iterate through arr, comparing adjacent elements;
* An if statement checks if the current element is greater than the next element, and swaps them
* Set swap to true, since a swap took place;
* Add a break statement to cases when any swaps were made and the arr is sorted
