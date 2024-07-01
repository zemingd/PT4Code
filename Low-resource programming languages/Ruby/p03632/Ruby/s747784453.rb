a, b, c, d = gets.split.map(&:to_i)
l = [a, c].max
r = [b, d].min
p [r - l, 0].max
