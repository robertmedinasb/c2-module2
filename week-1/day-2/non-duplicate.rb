def non_duplicated_values(values)
    newarray = []
    values.sort!.each do |value|
      values.count(value) < 2? newarray << value : newarray 
    end
    print newarray
    puts
end
non_duplicated_values([1,2,2,3,3,4,5])
non_duplicated_values([1,2,2,3,4,4])
