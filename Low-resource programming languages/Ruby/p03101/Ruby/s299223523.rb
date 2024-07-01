a, b = gets.chomp.split.map(&:to_i)
h, w = gets.chomp.split.map(&:to_i)

p (a - h) * (b - w)