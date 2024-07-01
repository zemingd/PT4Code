S = gets.chomp
N = (S.size+1) / 2
M = (N+1) / 2
x = S[0,N-1] == S[N,N-1].reverse
x &&= S[0,M-1] == S[M,M-1].reverse
puts x ? :Yes : :No