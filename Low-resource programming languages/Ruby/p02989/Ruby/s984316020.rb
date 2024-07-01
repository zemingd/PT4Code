n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)

d.sort!

answer = d[n / 2] - d[(n / 2) - 1] 

puts answer