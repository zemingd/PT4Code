a = gets.split.map(&:to_i)
a.sort!
sum = 0
sum += (a[1] - a[0]).abs
sum += (a[2] - a[1]).abs
puts sum