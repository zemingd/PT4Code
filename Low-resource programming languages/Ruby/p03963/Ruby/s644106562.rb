n,k=gets.split.map &:to_i
res=k
(n-1).times{res*=k-1}
p res
