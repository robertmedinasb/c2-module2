# frozen_string_literal: true

def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.split('').map(&:to_i).sum)
   end
