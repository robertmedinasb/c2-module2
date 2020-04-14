def hailstone(x)
    puts x
    if  x<1
        puts "Number #{x} is less than 1"
    end 
    while !(x <=1) #break when x is one
        if x % 2 == 0 #if is even
            x=x/2
            puts x
        elsif x % 2 > 0 #if is odd
            x=(x/3)+1
            puts x
        end
    end

end

hailstone(500) #Any number greather than 1