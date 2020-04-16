contacts = {}
begin
    print ""
    puts  "*--------------------------------------*"
    puts "What would you like to do?"
    puts "-- Type 'add' to add a contact."
    puts "-- Type 'update' to update a contact."
    puts "-- Type 'display' to display all contacts."
    puts "-- Type 'delete' to delete a contact."
    puts "-- Type 'exit' to exit."
    print "-- "
    option = gets.chomp.downcase

    case option
    when 'add'
        print"Type the name: "
        name = gets.chomp.capitalize.to_sym
        print"Type the number: "
        number = gets.chomp.to_i 
        contacts[name] = number
        puts contacts
        puts"#{name} are added!"
    when 'update'
        print "Type the contact's name to update: "
        name = gets.chomp.capitalize.to_sym
        if !(contacts[name].nil?)
            puts"The phone number is: #{contacts[name]}" 
            print"Are you sure to continue? (y/n): "
            answer = gets.chomp.downcase
            if answer == "y"
                print "Type the new number here: "
                new_number = gets.chomp.to_i
                contacts[name] = new_number
                puts"New number is updated!"
            end
        else
            puts "The contact is not includes in Contact book"
        end


    when 'display'
        contacts.each{|name, number| puts "#{name.to_s}: #{number}"}
    when 'delete'
        print "Type the contact's name to update: "
        name = gets.chomp.capitalize.to_sym
        if !(contacts[name].nil?)
            contacts.delete(name)
            puts "The contat was deleted"
        else
            puts "The contact is not includes in Contact book"
        end

    when 'exit'
        break    
    else
        puts"Sorry, I didn't understand you."
    end
end while !(option == "exit")