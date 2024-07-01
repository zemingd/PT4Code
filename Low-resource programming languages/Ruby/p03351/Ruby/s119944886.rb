a, b, c, d = gets.split.map(&:to_i)

puts (a - c).abs <= d || ((b - a).abs <= d && (b - c).abs <= d)  ? 'Yes' : 'No'