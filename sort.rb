def top_down_merge_sort(arr)
    return arr if arr.length <= 1
    
    mid = arr.length * 0.5

    left_half = arr[0...mid]
    right_half = arr[mid...]

    left_half = top_down_merge_sort(left_half)
    right_half = top_down_merge_sort(right_half)

    top_down_merge(right_half, left_half)
end

def top_down_merge (right_half, left_half)  
    sorted = []

    until left_half.empty? || right_half.empty?
        if left_half[0] <= right_half[0]
            sorted.push(left_half.shift)
        else
            sorted.push(right_half.shift)
        end
    end

    return sorted + left_half + right_half
end

array = [38, 27, 43, 3, 9, 82, 10]
sorted_array = top_down_merge_sort(array)
puts sorted_array