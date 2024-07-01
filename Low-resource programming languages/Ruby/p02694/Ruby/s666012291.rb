x = gets.split[0].to_i
y = 100
i = 0
while(true)
    y = (y*1.01).to_i
    i += 1
    if x <= y
        puts i
        break
    end
end