A, B, C, K = gets.split.map(&:to_i)
p [A, K].min - [0, K-A-B].max