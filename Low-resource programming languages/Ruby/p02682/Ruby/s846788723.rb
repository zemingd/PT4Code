A, B, C, K = gets.split.map(&:to_i)

puts [A, K].min - [0, K - A - B].max