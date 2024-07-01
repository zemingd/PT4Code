a = gets.chomp.chars.to_a
b = gets.chomp.chars.to_a
puts (a.sort <=> b.sort.reverse) == 1 ? "Yes" : "No"
