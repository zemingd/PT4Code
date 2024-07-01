S = gets.chomp
N = (S.size-1) / 2
F =->(s){s==s.reverse}
x = F[S]
x &&= F[S[0,N]]
x &&= F[S[N+1,N]]
puts x ? :Yes : :No