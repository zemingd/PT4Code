n,k=gets.split.map(&:to_i)
a=k
(n-1).times{
  a*=k-1
}
p a