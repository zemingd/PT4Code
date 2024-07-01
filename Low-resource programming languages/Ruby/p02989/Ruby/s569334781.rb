n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)
d.sort!

c = d.size / 2
l = d[c-1]
r = d[c]

puts r - l