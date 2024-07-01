n,m=gets.chomp.split.map(&:to_i)
u,t=1,100000
m.times{
  a=gets.chomp.split.map(&:to_i)
  u=a[0] if u<a[0]
  t=a[1] if a[1]<t
}
puts u<=t ? t-u+1 : 0
