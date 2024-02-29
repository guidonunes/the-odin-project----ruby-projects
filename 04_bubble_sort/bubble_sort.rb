def bubble_sort(arr)
    arr_length = arr.size
    return arr if arr_length <= 1 #already sorted 
end


# each element is compared to the one next to it
# they are swapped if the one on the left is larger than the one on the right.  