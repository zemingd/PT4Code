a = gets.split.map(&:to_i)
puts a[2] - [a[0] - a[1], a[2]].min
