A = gets.chomp.chars
B = gets.chomp.chars
puts A.zip(B).select { |a, b| a == b }.size