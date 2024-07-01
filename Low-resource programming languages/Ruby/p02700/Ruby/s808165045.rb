a, b, c, d = gets.split.map(&:to_i)
puts (a + d) / d <= (c + b) / b ? 'Yes' : 'No'