a, b, c, d = gets.chomp.split.map(&:to_i)
puts (c - a).abs <= d || ((b-a).abs <= d && (c-b).abs <= d) ? 'Yes' : 'No'
