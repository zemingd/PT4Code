s = gets.chomp.split("")
i = 1
count = 0
ookisa = s.size
#p s
while true
    if ookisa == 1
        break
    end
    if s[i] != s[i-1]
        s[i] = " "
        s[i-1] = " "
        count += 2
        s.delete(" ")
    else
        i += 1
        if i > arr.size - 1
            break
        end

        if s[i] == nil
            break
        end
    end
end
puts count