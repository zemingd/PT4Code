n = gets.to_i
a = gets.split(" ").map &:to_i
a.sort!
puts a[n-1] - a[0]