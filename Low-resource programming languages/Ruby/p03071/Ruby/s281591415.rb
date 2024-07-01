buttons = gets.chomp.split
buttons.length.times do |i|
    buttons[i] = buttons[i].to_i
end

coin = 0
2.times do
    coin += buttons.max
    buttons[buttons.index(buttons.max)] -= 1
end

puts coin