a,b,c,d = gets.strip.split.map(&:to_i)

puts (c - a).abs <= d || ((a - b).abs <= d && (b - c).abs <= d) ? 'Yes' : 'No'