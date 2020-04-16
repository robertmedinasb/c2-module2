# frozen_string_literal: true

def array_of_fixnums?(array)
  array.each do |element|
    if  element.class != bignum
      return false
    end
  end
end
