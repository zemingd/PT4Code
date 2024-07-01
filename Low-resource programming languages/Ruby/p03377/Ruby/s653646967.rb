a, b, x = gets.split.map(&:to_i)

puts a <= x && x <= (a + b) ? 'Yes' : 'No'