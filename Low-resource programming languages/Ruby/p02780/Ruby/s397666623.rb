n,k,*ps=$<.read.split.map &:to_i
s=m=0
(0...n).each{|i|
  s+=ps[i]
  s-=ps[i-k] if i>=k
  m=s if s>m
}
puts (m+k)*0.5