def bubble_sort items
    sorted = false
    sorting_array = items
    until sorted
        sorted = true
        for i in 0..sorting_array.length-2
            if sorting_array[i] > sorting_array[i+1]
                sorting_array[i],sorting_array[i+1] = sorting_array[i+1],sorting_array[i]
                sorted = false
            end
        end
    end
    sorting_array
end

puts bubble_sort([4,3,78,2,0,2])