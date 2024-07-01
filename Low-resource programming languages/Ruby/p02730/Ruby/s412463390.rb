S = gets.chomp
puts ((S == S.reverse and S[0, (S.size - 1) / 2] == S[(S.size + 1) / 2, (S.size - 1) / 2]) ? "Yes" : "No")
