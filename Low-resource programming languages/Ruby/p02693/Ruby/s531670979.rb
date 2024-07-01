k = gets.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
puts b - a >= k ? "OK" : "NG"