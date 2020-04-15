def summation(n)
    sum = 0
    (1..n).each {|val| sum+=yield(val)}
    sum
end

puts summation(3){|val|val*2}

