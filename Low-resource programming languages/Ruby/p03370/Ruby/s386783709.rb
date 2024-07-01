N, X = gets.split.map(&:to_i)
M = Array.new(N){gets.to_i}

sum = M.inject(:+)
min = M.sort.first
puts M.size + (X - sum)/min