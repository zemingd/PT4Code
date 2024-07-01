n = gets.chomp.to_i
s = gets.chomp.split("")
i = 0
kazu = n
arr = [s[0]]
while true
    if s[i] == s[i+1]
        kazu = kazu - 1
    end
    if i == n - 2
        break
    end
    i += 1
end
puts kazu