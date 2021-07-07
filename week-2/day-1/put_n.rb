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
put_n('This will be printed 5 times!', 5)
