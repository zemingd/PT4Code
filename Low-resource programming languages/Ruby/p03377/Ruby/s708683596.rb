a, b, x = gets.split.map(&:to_i)
puts (x >= a) && (x <= a + b) ? :Yes : :No