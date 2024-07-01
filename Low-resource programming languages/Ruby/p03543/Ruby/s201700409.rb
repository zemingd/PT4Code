a, b, c, d = gets.chars.map(&:to_i)
puts (a == b && b == c) || (b == c && c == d) ? 'Yes' : 'No'
