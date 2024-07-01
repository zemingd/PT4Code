N = gets.to_i
d = gets.split.map &:to_i

d.sort!
puts (d[N/2] - d[N/2 - 1]).abs