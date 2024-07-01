N, M = gets.split.map(&:to_i)
L, R = M.times.map { gets.split.map(&:to_i) }.transpose
diff = L.max - R.min

puts diff.negative? ? 0 : diff + 1