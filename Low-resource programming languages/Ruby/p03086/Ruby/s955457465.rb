s = gets.chomps.split("")
s_re = s.reverse
s_size = s.s_size
i = 0
while true
    if s[i] == "A" || s[i] == "G" || s[i] == "C" || s[i] == "T"
        exit
    else
        s.delete(s[i])
    end
end
s = s.reverse
while true
    if s[i] == "A" || s[i] == "G" || s[i] == "C" || s[i] == "T"
        exit
    else
        s.delete(s[i])
    end
end
puts s.size