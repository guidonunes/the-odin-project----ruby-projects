def bubble_sort(arr)
    arr_length = arr.size
    return arr if arr_length <= 1 #already sorted 

    loop do 
        #track if any swaps were made in the pass
        swapped = false 
        (0...arr_length - 1).each do|i|
            if arr[i] > arr[i + 1]
                #swap elements
                arr[i], arr[i+1] = arr[i+1], arr[i] 
                #set to true since a swap occurred
                swapped = true 
            end
        end
        break if not swapped
    end
    arr
end


