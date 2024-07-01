N, K = gets.split.map(&:to_i)
S = gets
s = S[K - 1].downcase
S[K - 1] = s
puts S