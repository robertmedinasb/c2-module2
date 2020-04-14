def palindrome?(sentence)
    sentence_verified = sentence.downcase.gsub(" ","")
    puts sentence_verified == sentence_verified.reverse
end

palindrome?("Never odd or even")