ammount = 0
interest = 0.1
month = 1
option = 0
month = 1
while !(option == 5)
    begin 
        puts"What do you want to do?:"
        puts "1. Deposite"
        puts "2. Withdrawal"
        puts "3. See ammount"
        puts "4. Next month"
        puts "5. Exit"
        print "Put the number of your option here: "
        option = (gets.chomp.to_f).round
        if !(option > 0 && option < 6)
            puts"Option: #{option} is incorrect"
        end
    end while !(option > 0 && option < 6)
        if option == 1
            print"How much do you want to deposite: $"
            depo= (gets.chomp.to_f).round(2)
            ammount = ammount + depo
            puts
        elsif option == 2
            print"How much do you want to withdrawal: $"
            withdrawal= (gets.chomp.to_f).round(2)
            ammount = ammount - withdrawal
            puts
        elsif option == 3
            print "Your ammount is: $#{ammount}"
            puts
        elsif option == 4
            print "Do you want to go to next month? (y/n):"
            answer = gets.chomp.downcase
            if answer == "y"
                month = month + 1
                print"Current month is: 0#{month}"
                puts
                ammount = ammount + (ammount * 0.010)
            else 
                break
            end
        end
end

puts "Thanks, see you later"