d = gets.chomp.split.map(&:to_i)

d.sort!

h = n/2

p d[h] - d[h-1]
