N = gets.to_i
buttons = N.times.map{gets.to_i}
next_i = 0
count = 0
buttons.size.times do
    next_i = buttons[next_i] - 1
    count += 1
    if next_i == 1
        puts count
        exit
    end
end
puts -1