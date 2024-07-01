r, g, b = gets.split.map(&:to_i)
rgb = r * 100 + g * 10 + b
puts rgb % 4 == 0 ? 'Yes' : 'No'