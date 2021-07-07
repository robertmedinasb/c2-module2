# frozen_string_literal: true

class String
  def to_2000
    count = 0
    message = split('').map do |index|
      count += 1
      if count.odd?
        index.upcase
      else
        index.downcase
      end
    end
    message.join('')
  end
end
p 'Hola, como estas?'.to_2000 # prints "HoLa, CoMo EsTaS?""
p 'Porque escribes de esa manera?'.to_2000 # prints "PoRqUe EsCrIbEs De EsA mAnErA?"
p 'What is wrong with you?'.to_2000 # prints "WhAt Is WrOnG wItH yOu?"
