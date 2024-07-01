buttons = gets.chomp.split(" ").map(&:to_i)
puts button[0] == button[1] ? button[0] * 2 : (button.sort[1] * 2) - 1