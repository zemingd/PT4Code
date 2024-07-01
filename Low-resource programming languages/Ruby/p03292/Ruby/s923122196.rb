a1, a2, a3 = gets.chomp.split(" ").map(&:to_i);
puts (a2 - a1).abs() + (a3 - a2).abs()