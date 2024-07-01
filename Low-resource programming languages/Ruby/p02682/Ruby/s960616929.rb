A,B,C,K = gets.split.map(&:to_i)
puts [A, K].min - (K - A - B)