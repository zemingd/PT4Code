S = gets.chomp
K = gets.to_i

i = S.index(/[^1]/)
puts i + 1 > K ? 1 : S[i]