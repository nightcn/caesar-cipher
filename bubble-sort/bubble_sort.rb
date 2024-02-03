def bubble_sort(arr)
    for i in 0...arr.size - 1 do
        if arr[i + 1] < arr[i]
            temp = arr[i + 1]
            arr[i + 1] = arr[i]
            arr[i] = temp  
        end
    end
    for i in 0...arr.size - 1 do
        if arr[i + 1] < arr[i]
            arr = bubble_sort(arr)
        else
            next
        end
    end
    arr
end

p bubble_sort([4,3,78,2,0,2])

