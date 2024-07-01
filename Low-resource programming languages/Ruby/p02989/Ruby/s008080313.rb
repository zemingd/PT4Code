n = gets.to_i
d = gets.split(" ").map(&:to_i)

d.sort!

i = n/2
num = d[i] - d[i-1]

p num