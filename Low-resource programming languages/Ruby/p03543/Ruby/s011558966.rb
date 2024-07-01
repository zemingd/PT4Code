N = gets.chomp.chars
puts N[0..2].uniq.count == 1 || N[1..3].uniq.count == 1 ? "Yes" : "No"