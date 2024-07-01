a, b, c = gets.split(" ").map(&:to_i)
puts [a+b, a+c, b+a, b+c, c+a, c+b].min