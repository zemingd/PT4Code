a, b, c, d = gets.split.map(&:to_i)
x = [b, d].min - [a, c].max
puts x > 0 ? x : 0
