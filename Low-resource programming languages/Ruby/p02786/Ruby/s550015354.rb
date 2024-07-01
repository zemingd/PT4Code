h = gets.chomp.to_i
i = 1
count = 0
while true
    h = h / 2
    count += i
    if h == 0
        puts count
        break
    else
        i = i * 2
    end
end