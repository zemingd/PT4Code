N = gets.chomp.chars
puts N.any?{|s| N.count(s) >= 3 } ? "Yes" : "No"