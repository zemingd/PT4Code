N = gets.to_i
T,A = gets.split.map(&:to_f)
H = gets.split.map(&:to_i)

p (0...H.size).min_by{ |i| (T - 0.006*H[i] - A).abs } + 1