s = gets.chomp.split("")
long = s.size
i = 0
arr = []
ookisa = []
aa = 0
while true
    if arr != []
        arr << s[i]
    end
    if s[i] == "A" && aa == 0
        arr << s[i]
        aa += 1
    end
    if s[i] == "Z" && arr != []
        ookisa << arr.size
    end
    if i == long-1
        break
    end
    i += 1
end
puts ookisa.sort.pop