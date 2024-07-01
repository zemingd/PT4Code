N, K = gets.chomp.split.map(&:to_i)
S = gets.chomp

a = S[K-1]
S[K-1] = a.downcase

print S + "\n"