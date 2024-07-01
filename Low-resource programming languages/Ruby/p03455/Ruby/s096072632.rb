x, y = gets.split
puts (x.to_i * y.to_i)%2 == 0 ? "Even" : "Odd"