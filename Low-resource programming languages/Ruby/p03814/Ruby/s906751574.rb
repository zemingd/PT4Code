s = gets.chomp.split("")
long = s.size
i = 0
arr = []
while true
    if arr != []
        arr << s[i]
    end
    if s[i] == "A"
        arr << s[i]
    end
    if s[i] == "Z" && arr != []
        break
    end
    i += 1
end
puts arr.size