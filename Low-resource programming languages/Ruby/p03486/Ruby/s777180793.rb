S = gets.chomp.chars.map(&:ord).sort
T = gets.chomp.chars.map(&:ord).sort
puts T[0] < S[-1] || (T[0] == S[-1] && T.size < S.size) ? "Yes" : "No"