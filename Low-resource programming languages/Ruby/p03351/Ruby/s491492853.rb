a, b, c, d = gets.chomp.split.map(&:to_i)

puts ((a - b).abs <= d && (c - b).abs <= d) || (c - a).abs <= d ? :Yes : :No