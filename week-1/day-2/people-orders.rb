
def process_orders(orders)
    hash = orders.each_with_object(Hash.new(0)){|order, count| count[order[1]] += 1}
    puts hash
end


people_orders = {
    "julio" => "pizza",
    "diego" => "saltado",
    "andres" => "hamburguer",
    "ximena" => "ceviche",
    "felipe" => "pizza",
    "jon" => "saltado",
    "snow" => "ceviche",
    "pepe" => "fried chicken",
    "queen of dragons" => "ice cream",
    "jose" => "hamburguer",
    "jafeth" => "fried chicken"
  }
process_orders(people_orders)