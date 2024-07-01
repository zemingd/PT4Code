N = gets.to_i
d = gets.split.map(&:to_i).sort!
p d[N / 2] - d[N / 2 - 1]
