a, b, c, d = gets.chomp.split.map(&:to_i)
puts ((a - 1) / d >= (c - 1) / b)? "Yes" : "No"