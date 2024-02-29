def bubble_sort(arr)
    arr_length = arr.size
    return arr if arr_length <= 1 #already sorted 

    loop do 
        swapped = false #track if any swaps were made in the pass
        (0...arr_length - 1).each do|i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i+1] = arr[i+1], arr[i] #swap elements
                swapped = true #set to true since a swap occurred
            end
        end
    end
end


# each element is compared to the one next to it
# they are swapped if the one on the left is larger than the one on the right.  