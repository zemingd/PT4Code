S = gets.chomp.chars.map(&:ord).sort
T = gets.chomp.chars.map(&:ord).sort

puts S[0] < T[-1] || (S[0] == T[-1] && T.size < S.size) ? "Yes" : " No"