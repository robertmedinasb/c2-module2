# frozen_string_literal: true

def array_of_fixnums?(array)
  array.each do |element|
    return false if  element.class != bignum
  end
end
