ss = gets.chomp
ans = ""

ss.each_char do |s| 
    if s == "B"
        if ans.size == 0
           next 
        else
            ans.chop!
        end
    else
        ans += s
    end

end

puts ans
