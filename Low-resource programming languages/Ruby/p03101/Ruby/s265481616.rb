row, column = gets.chomp.split(" ").map(&:to_i)
h, w = gets.chomp.split(" ").map(&:to_i)
puts row*column - (h*column + w*row - h*w)