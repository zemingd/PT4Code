s = gets.chomp
k = gets.to_i

for i in 0..s.length do
    if s[i] == '1'
        k -= 1
    else
        k = 0
    end
    if k <= 0
        puts s[i]
        break
    end
end
