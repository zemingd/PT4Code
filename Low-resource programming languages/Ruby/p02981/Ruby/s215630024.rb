n, a, b = gets.chomp.split(" ").map(&:to_i)

n * a >= b ? sum = b : sum = n * a
puts sum