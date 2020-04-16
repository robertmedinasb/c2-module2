# frozen_string_literal: true

contacts = {}
def welcome
  print ''
  puts '*--------------------------------------*'
  puts 'What would you like to do?'
  puts "-- Type 'add' to add a contact."
  puts "-- Type 'update' to update a contact."
  puts "-- Type 'display' to display all contacts."
  puts "-- Type 'delete' to delete a contact."
  puts "-- Type 'exit' to exit."
  print '-- '
end

def add_contact(contacts)
  print 'Type the name: '
  name = gets.chomp.capitalize.to_sym
  print 'Type the number: '
  number = gets.chomp.to_i
  contacts[name] = number
  puts "#{name} was added!"
end

def update_contact(name, contacts)
  if !contacts[name].nil?
    puts "The phone number is: #{contacts[name]}"
    print 'Are you sure to continue? (y/n): '
    answer = gets.chomp.downcase
    if answer == 'y'
      print 'Type the new number here: '
      new_number = gets.chomp.to_i
      contacts[name] = new_number
      puts 'New number is updated!'
    end
  else
    puts 'The contact is not included in Contact book'
  end
end

def delete(name, contacts)
  if !contacts[name].nil?
    contacts.delete(name)
    puts 'The contact was deleted'
  else
    puts 'The contact is not included in Contact book'
  end
end

loop do
  welcome
  option = gets.chomp.downcase
  case option
  when 'add'
    add_contact(contacts)
  when 'update'
    print "Type the contact's name to update: "
    name_update = gets.chomp.capitalize.to_sym
    update_contact(name_update, contacts)
  when 'display'
    contacts.each do |namecontact, numbercontact|
      puts "#{namecontact}: #{numbercontact}"
    end
  when 'delete'
    print "Type the contact's name to update: "
    name_delete = gets.chomp.capitalize.to_sym
    delete(name_delete, contacts)
  else
    puts "Sorry, I didn't understand you."
  end
  break if option == 'exit'
end
