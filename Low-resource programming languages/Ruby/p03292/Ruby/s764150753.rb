a1, a2, a3 = gets.chomp.split(" ").map(&:to_i);
puts (abs(a2 - a1) + abs(a3 - a2))
