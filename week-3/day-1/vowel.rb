# frozen_string_literal: true

class String
  def vowel?
    self == self[/\A[aeiouAEIOU]/]
  end
  end
