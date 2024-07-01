A, B, C = gets.chomp.split(" ").map(&:to_i)

n = B / A
puts [n, C].min
