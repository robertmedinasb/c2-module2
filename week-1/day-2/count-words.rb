def count_words(word)
    word = word.downcase.split(" ")
    
    word.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
end
print count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")
