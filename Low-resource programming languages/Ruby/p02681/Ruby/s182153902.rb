S = gets.chomp
T = gets.chomp

puts (S.length + 1 == T.length) && T.start_with?(S) ? "Yes" : "No"
