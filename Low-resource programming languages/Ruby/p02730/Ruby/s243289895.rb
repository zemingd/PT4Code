S = gets.chomp
N = (S.size-1) / 2
F =->(s){
  n = (s.size-1) / 2
  s.size.odd? && s[0,n] == s[n+1..-1].reverse
}
x = F[S]
x &&= F[S[0,N]]
x &&= F[S[N+1..-1]]
puts x ? :Yes : :No