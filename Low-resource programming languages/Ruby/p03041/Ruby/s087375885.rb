N = gets.to_i
K = gets.to_i
S = gets
 
d = S[K].downcase

ans = S[0..K-1] + d + S[K+1..N-1]
puts ans