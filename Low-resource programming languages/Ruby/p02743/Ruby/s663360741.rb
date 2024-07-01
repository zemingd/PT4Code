a, b, c = gets.split.map(&:to_i)

puts c - b - a > 0 && 4 * a * b < (c - b - a)**2 ? 'Yes' : 'No'