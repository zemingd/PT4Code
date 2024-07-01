h, w = gets.split.map(&:to_i)

k = (h + w).odd? ? 1 : 0

puts((h * w + k) / 2)
