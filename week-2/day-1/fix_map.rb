# frozen_string_literal: true

def map(array)
  out = []
  if block_given?
    array.each do |el|
      out << yield(el)
    end
    out
  else
    array
  end
end
arr = [1, 2, 3]
p map(arr) { |el| el * 2 } # Returns [2, 4, 6]

# With no block
p new_arr = map(arr) # Returns [1, 2, 3]
p arr.equal?(new_arr) # Returns false, new_arr is a copy of arr. They are not the same object.
# Note: #equal? checks that two objects are the same instance: https://apidock.com/ruby/Object/equal%3F
