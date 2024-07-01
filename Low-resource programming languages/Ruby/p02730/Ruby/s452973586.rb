S = gets.chomp
N = (S.size-1) / 2
F =->(s){
  n = (S.size-1) / 2
  s[0,n] == s[-n,n].reverse
}
x = F[S]
x &&= F[S[0,N]]
x &&= F[S[N+1..-1]]
puts x ? :Yes : :No