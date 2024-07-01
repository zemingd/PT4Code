X = gets.split.map(&:to_i).sort
K = gets.to_i
puts X[0] + X[1] + (X[2] * K * 2)