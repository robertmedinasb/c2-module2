def random_select(array, n)
    newarray = []
    n.times do
        newarray << array[rand(array.length)]
    end
    print newarray
end
random_select([1, 2, 3, 4, 5], 2 )
random_select([1, 2, 3, 4], 2 )
random_select([1, 2, 3], 2 )
random_select([3, 1, 5], 2 )