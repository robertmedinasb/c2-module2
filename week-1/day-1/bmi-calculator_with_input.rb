#get mass#
print "Show me the weight(kg): "
mass = gets.chomp.to_f

#get height#
print "Show me the height(m): "
height = gets.chomp.to_f

#calculate
puts (mass / height**2).round(2)