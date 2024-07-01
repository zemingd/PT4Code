n = gets.to_i
d = gets.split.map(&:to_i)
d.sort!
min = d[n/2-1]
max = d[n/2]
puts max == min ? 0 : max - min