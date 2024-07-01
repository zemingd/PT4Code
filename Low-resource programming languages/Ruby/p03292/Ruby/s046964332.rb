a = gets.split.map(&:to_i)
a = [(a[0] - a[1]).abs, (a[1] - a[2]).abs, (a[2] - a[0]).abs]
puts a.inject(:+) - a.max