h = gets.chomp.to_i
i = 1
while true
    if h < i
        break
    end
    i = i * 2
end

print i -1 