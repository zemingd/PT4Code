a, b = gets.split.map(&:to_i)
puts ((a * b) % 2 != 0) ? "Yes" : "No"