buttons = gets.chomp.split(" ").map(&:to_i)
buttons[2] = buttons[0]-1
buttons[3] = buttons[1]-1
buttons = buttons.sort {|a, b| b <=> a }
puts buttons[0]+buttons[1]
