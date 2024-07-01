a, b, c, d = gets.chomp.split.map(&:to_i)
puts ((a - c).abs > 2 * d) ? 'No' : 'Yes'