
def pingpong(x)
    #Create the array of index
    index=[]
    values=[]
    current = 0
    reverse = false
    for i in (0..x-1) do
        index.push(i+1)
    end

    for i in (0..index.length-1) do
        if !(reverse)
            current = current + 1
        else
            current = current - 1
        end
        if ((index[i] % 7)==0) || ((index[i].to_s).include? "7")
            current = current
            if reverse == false
                reverse = true
            else
                reverse = false  
            end
        end
        values.push(current)
    end
    puts values[x-1]
end
pingpong(7)
pingpong(8)
pingpong(15)
pingpong(21)
pingpong(22)
pingpong(30)
pingpong(68)
pingpong(69)
pingpong(70)
pingpong(71)
pingpong(72)
pingpong(100)
