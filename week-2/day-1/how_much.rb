# frozen_string_literal: true

def to_hash(string)
  lines = string.lines
  keys = lines[0].split ','
  values = lines[1..-1].map.each { |item| item.split ',' }
  products = []
  values.each do |pos|
    hash = {}
    pos.each_with_index do |item, index|
      hash[keys[index]] = item
    end
    products << hash
  end
  products
end

def to_USD(coin, ammount)
  ammount = ammount.to_f
  if coin == 'PEN'
    ammount /= 3.00
  elsif coin == 'ARS'
    ammount /= 40.00
  end
  ammount
end

def how_much_is_it(input)
  prices = []
  tmparray = to_hash(input)
  tmparray.each do |x|
    price = x[' (Symbol) Price'].split(' ')
    prices << to_USD(price[0], price[1]) unless price[1] == 'USD'
  end
  total = prices.inject { |current, sum| current + sum }
  puts "The total is: #{total}"
end

input = 'Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7'

how_much_is_it(input)
