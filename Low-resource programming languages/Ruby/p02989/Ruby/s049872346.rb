n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)
d.sort!
# p d
t = n / 2
result = d[t] - d[t-1]
puts result