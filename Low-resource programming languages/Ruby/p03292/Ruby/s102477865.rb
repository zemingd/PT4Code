a = gets.chomp.split.map(&:to_i)
b = []
b << (a[0] - a[1]).abs
b << (a[1] - a[2]).abs
b << (a[2] - a[0]).abs
puts b.inject(:+) - b.max
