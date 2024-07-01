a = gets.split.map(&:to_i)
a.sort!
puts a[2] * 10 + a[1] + a[0]