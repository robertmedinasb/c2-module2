# frozen_string_literal: true

print 'First number: '
a = gets.chomp.to_i
print 'Second number: '
b = gets.chomp.to_i

# Calculate:
sum = a + b

if sum.positive?
  puts sum.to_s
else
  puts((sum * -1)).to_s
end
