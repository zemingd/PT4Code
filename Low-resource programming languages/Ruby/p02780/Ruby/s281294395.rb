n,k,*ps=$<.read.split.map &:to_i
ps.unshift(*[0]*k)
s=m=0
(0...n).each{|i|
  s+=ps[i+k]-ps[i]
  m=s if s>m
}
puts (m+k)*0.5