N, K = gets.chop.split.map(&:to_i)
S = gets

p S[0...(K-1)] + S[K-1].downcase + S[K..N]
