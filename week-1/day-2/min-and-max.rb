
def min(numbers)
    min_number = 0
    for i in (0..numbers.length-1) do
        if numbers[i] < min_number
            min_number = numbers[i]
        end
    end
    puts min_number
end

def max(numbers)
    max_number = 0
    for i in (0..numbers.length-1) do
        if numbers[i] > max_number
            max_number = numbers[i]
        end
    end
    puts max_number
end
numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]
min(numbers) # Result is -3456
max(numbers) # Result is 123891
