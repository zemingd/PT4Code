x, a, b = gets.strip.split.map(&:to_i)

y = x - a
z = y % b
puts z