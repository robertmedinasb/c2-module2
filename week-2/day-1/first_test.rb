# frozen_string_literal: true

def assert_equal(expected, actual, method)
  if expected == actual
    puts "#{method} returned #{actual} as expected."
  else
    puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
  end
end

def map(array)
  result = []
  array.each do |el|
    result << yield(el)
  end
  result
end

tests = [
  { expected: [3, 6, 9],
    actual: map([1, 2, 3]) { |el| el * 3 },
    method: 'map([1,2,3]){ |el| el * 3 }' },
  { expected: [3, 6, 9],
    actual: map([1, 2, 3]) { |el| el * 2 },
    method: 'map([1,2,3]){ |el| el * 2 }' }

]
tests.each do |test|
  assert_equal(test[:expected], test[:actual], test[:method])
end
