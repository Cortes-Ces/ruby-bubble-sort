def bubble_sort(array)
    n = array.length

    # Iterate through each element in the array 
    (n - 1).times do |i|
        # Compare adjacent elements and swap if necessary
        (n - i - 1).times do |j|
            array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
        end
    end

    array
end

# Running code
unsorted_array = [64, 34, 25, 12, 22, 11, 90]
sorted_array = bubble_sort(unsorted_array.clone)
puts "Unsorted array: #{unsorted_array.join(', ')}"
puts "Sorted array: #{sorted_array.join(', ')}"