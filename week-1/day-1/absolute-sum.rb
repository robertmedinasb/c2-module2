print"First number: "
a = gets.chomp.to_f
print"Second number: "
b = gets.chomp.to_f

#Calculate:
sum = a + b

if sum > 0
    puts"#{sum.round}"
else
    puts"#{(sum*-1).round}"
end