# frozen_string_literal: true

print 'Show me the weight(kg): ' # get mass
mass = gets.chomp.to_f

print 'Show me the height(m): '  # get height
height = gets.chomp.to_f

bmi = (mass / height**2).round(2) # calculate
puts bmi
