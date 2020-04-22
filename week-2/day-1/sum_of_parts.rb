# frozen_string_literal: true

def parts_sums(ls)
  ls.inject([ls.sum]) { |array, n| array << array.last - n }
end
