N = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)

d.sort!
p d[N/2] - d[N/2-1]
