def longest_string(a,b)
    if a.length > b.length
        puts a
    elsif a.length == b.length
        puts "Are equals"
    else
        puts b
    end
end

longest_string("I am the longest.", "No, you are not the longest; liar.")
# Prints No, you are not the longest; liar.