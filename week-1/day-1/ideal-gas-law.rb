def calculate_pressure(n, t, v)
    r = 8.314

    pressure = (n*r*t)/v
    puts pressure .round(1)

end

calculate_pressure(5, 500, 2) # Returns 10392.5