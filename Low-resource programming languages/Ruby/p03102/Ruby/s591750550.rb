n,m,c=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
a=n.times.map{gets.split.map(&:to_i)}

ans=0
a.each{|q|
  temp=c
  m.times{|i|temp+=q[i]*b[i]}
  ans+=1 if temp>0
}

puts ans