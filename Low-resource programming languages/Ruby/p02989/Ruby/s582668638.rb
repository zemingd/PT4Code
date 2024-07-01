n = gets.to_i
a = gets.split.map &:to_i
a.sort!
p a[n/2]-a[n/2-1]