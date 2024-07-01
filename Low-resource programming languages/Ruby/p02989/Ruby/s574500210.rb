n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
ans = a[n / 2] - a[n / 2 - 1]
puts ans 