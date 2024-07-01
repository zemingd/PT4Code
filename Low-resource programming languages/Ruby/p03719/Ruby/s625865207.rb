a, b, c = gets.strip.split.map(&:to_i)

puts (a <= c && c <= b) ? 'Yes' : 'No'