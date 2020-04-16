def map(arr)
    newarray = []
    for element in (0..arr.length-1) do
        newarray[element] = yield(arr[element])
    end
    print newarray
end

test_array = [2, 3, 4, 5]
map(test_array) { |element| element * 3}
# Result: [6, 9, 12, 15]