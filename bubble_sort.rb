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

def bubble_sort_by items
    array = items
    sorted = false
    until sorted
        sorted = true
        for i in 0..array.length-2
            if yield(array[i], array[i+1]) > 0
                array[i],array[i+1] = array[i+1], array[i]
                sorted = false
            end
        end
    end
    array
end