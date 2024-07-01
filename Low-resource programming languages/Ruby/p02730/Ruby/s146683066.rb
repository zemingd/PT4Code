S = gets.chomp
N = (S.size-1) / 2
F =->(s){
  n = (s.size-1) / 2
  n > 0 && s[0,n] == s[n+1,n].reverse
}
x = F[S]
x &&= F[S[0,N]]
x &&= F[S[N+1,N]]
puts x ? :Yes : :No