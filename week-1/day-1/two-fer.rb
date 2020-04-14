print"Who?"
name = gets.chomp
if name.length < 3
    name = "you"
end
    puts "One for #{name}, one for me."
