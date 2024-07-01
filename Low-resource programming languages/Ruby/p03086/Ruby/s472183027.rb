s = gets.chomp.split("")
s_re = s.reverse
i = 0
while true
    if s[i] == "A" || s[i] == "G" || s[i] == "C" || s[i] == "T"
        break
    elsif s == []
        break
    else
        s.shift
    end
end
i = 0
s = s.reverse
while true
    if s[i] == "A" || s[i] == "G" || s[i] == "C" || s[i] == "T"
        break
    elsif s == []
        break
    else
        s.shift
    end
end
puts s.size