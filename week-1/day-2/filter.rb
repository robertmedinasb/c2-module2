def filter(arr)
    newarray = []
    count = 0
    for element in (0..arr.length-1) do
        yield(arr[element]) ? newarray[count] = arr[element] : next
        count =+ 1
    end
    print newarray
    puts
end

test_array = [2, 3, 4, 5]
filter(test_array) { |element| element > 3}
# Result: [4, 5] -> numbers 2 and 3 were removed