d = gets.split.map(&:to_i)

d.sort!.reverse!

p d[0] * 10 + d[1] + d[2]