#initalize arrays of each topping inside one array
toppings =[["bread",["vainilla",0.50],["chocolate",0.75],["redVelvet",0.85]],
        ["frosting",["vanilla",0.60],["oreo",1.10],["mintChocolate",1.45]],
        ["filling",["nutella",1.00],["strawberry", 0.55],["peanutButter",0.45]]]
ammount = 0 #initial ammount
puts "Welcome!"
puts
for i in (0..toppings.length-1)   #for in general array
    current = toppings[i]
    puts"Please, choose your #{current[0]}: " 
    for j in (1..current.length-1) # for in each topping
        puts "#{j}. #{(current[j][0]).capitalize} : $ #{(current[j][1])}"
    end
        begin  #Evaluate the input is correct inside of numbers of elements
            print"Put the number of your option here: "
            selection = (gets.chomp.to_f).round
        end while !(selection < current.length)
            ammount = ammount + current[selection][1]
            puts     
end
print"How many cupcakes are you wanted?: "
qty = (gets.chomp.to_f).round
puts
if qty > 5 && qty < 13
    dcto = 0.04
elsif qty  > 12
    dcto = 0.1
else
    dcto = 0
end
#final print !
subtotal = (qty*ammount).round(2)
total = (qty*(ammount-(ammount*dcto))).round(2)
puts "Subtotal: #{subtotal}"
puts "Dcto: #{(total*dcto).round(2)}"
puts "Total: #{total}"