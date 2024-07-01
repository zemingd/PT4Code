n, m = gets.split.map(&:to_i)
p [n + m, n - m, n * m].max
