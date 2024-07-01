N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort
puts H.size <= K ? 0 : H[0,H.size - K].inject(&:+)