n = gets.to_i
d = gets.split.map(&:to_i)

d.sort!
puts d[n / 2] - d[n / 2 - 1]
