N, X = gets.chomp.split(" ").map(&:to_i)
M = Array.new(N)
M.map!{ gets.to_i }

puts M.size + (X - M.inject(:+)) / M.min
