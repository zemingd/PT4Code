n,m=gets.split.map(&:to_i)
l_max=0
r_min=n+1
m.times{
  l,r=gets.split.map(&:to_i)
  l_max=l if l_max<l
  r_min=r if r<r_min
}

puts [r_min-l_max+1,0].max