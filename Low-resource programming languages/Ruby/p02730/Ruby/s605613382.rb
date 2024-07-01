S = gets.chomp
N = (S.size-1) / 2
F =->(s){
  n = (s.size-1) / 2
  s.size.odd? && (0..n).each.all? {|i| s[i]==s[-1-i]}
}
x = F[S]
x &&= F[S[0,N]]
x &&= F[S[N+1,N]]
puts x ? :Yes : :No