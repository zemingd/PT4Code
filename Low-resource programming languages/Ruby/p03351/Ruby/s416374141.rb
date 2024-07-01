a, b, c, d = gets.split.map(&:to_i)
puts ((a-b).abs <= d && (b-c).abs <= d) || ((a-c).abs <= d) ? 'Yes' : 'No'