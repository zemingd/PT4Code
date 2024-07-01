a, b, c = gets.chomp.split.map(&:to_i)
d = [b, a * c].min
p d/a
