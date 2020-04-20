# frozen_string_literal: true

# initalize arrays of each topping inside one array
toppings = [['bread', ['vainilla', 0.50], ['chocolate', 0.75], ['redVelvet', 0.85]],
            ['frosting', ['vanilla', 0.60], ['oreo', 1.10], ['mintChocolate', 1.45]],
            ['filling', ['nutella', 1.00], ['strawberry', 0.55], ['peanutButter', 0.45]]]
ammount = 0 # initial ammount
puts 'Welcome!'
puts
toppings.each do |array| # for in general array
  puts "Please, choose your #{array[0]}: "
  j = 0
  array.each do |element|  # for in each topping
    puts "#{j}. #{(element[0]).capitalize} : $ #{element[1]}" if j.positive?
    j += 1
  end
  loop do
    print 'Put the number of your option here: '
    selection = gets.chomp.to_f.round
    break if selection >= array.length
  end
  ammount += array[selection][1]
  puts
end
print 'How many cupcakes are you wanted?: '
qty = gets.chomp.to_f.round
puts
dcto = if qty > 5 && qty < 13
         0.04
       elsif qty > 12
         0.1
       else
         0
       end
# final print !
subtotal = (qty * ammount).round(2)
total = (qty * (ammount - (ammount * dcto))).round(2)
puts "Subtotal: #{subtotal}"
puts "Dcto: #{(total * dcto).round(2)}"
puts "Total: #{total}"
