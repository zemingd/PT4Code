a, b, c, d = gets.chomp.split.map(&:to_i)

puts ((a...b).to_a & (c...d).to_a).size