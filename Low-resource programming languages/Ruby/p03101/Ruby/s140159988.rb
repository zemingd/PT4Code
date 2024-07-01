h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)

puts (h - r) * (w - c)
