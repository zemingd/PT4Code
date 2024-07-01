a, b = gets.strip.split.map(&:to_i)

x = (a + b) / 2.to_f

puts x % 1 == 0 ? x.to_i : x.to_i + 1