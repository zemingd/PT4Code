n, x, *m = $stdin.read.split.map(&:to_i)
puts n + (x - m.inject(:+)) / m.min
