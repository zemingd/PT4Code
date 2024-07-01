a, b, c = gets.split.map(&:to_i)
d = c - a - b

puts((d >= 0 && 4 * a * b < d * d) ? :Yes : :No)
