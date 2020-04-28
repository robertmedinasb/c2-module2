# frozen_string_literal: true

def solution(str)
  arr = str.split('').each_slice(2).to_a.map(&:join)
  unless arr.empty?
    arr[-1] = "#{arr[-1]}_" if arr[-1].length < 2
  end
  arr
end
