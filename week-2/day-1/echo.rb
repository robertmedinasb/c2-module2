# frozen_string_literal: true

def put_n(string, n)
  if n.is_a?(Float)
    raise ArgumentError, 'The second paramater must be an integer'
  end
  unless n.positive?
    raise ArgumentError, 'The second paramater must be a positive number'
  end

  n.times do
    puts string
  end
end

puts 'What do you want to echo?'
text = gets.chomp
begin
  puts 'How many times do yo want to repeat it?'
  times = gets.chomp.to_i
  put_n(text, times)
rescue StandardError
  puts "I don't understand how many times do you want to echo the string!"
  puts 'What do you want to echo? '
  retry
end
