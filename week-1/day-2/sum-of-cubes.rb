def sum_of_cubes(a, b)
    (a..b).inject(0) do
        |sum, x| sum += x**3
    end
end
puts sum_of_cubes(3,5)

