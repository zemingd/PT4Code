def adj(g,s)
  3.times.map{|i|(g[i]-s[i]).abs}.inject(:+)
end

n,*g=gets.split.map(&:to_i)
l=n.times.map{gets.to_i}

min=1000_000_000

(4**n).times{|k|
  s=[0]*4
  i=0
  cost=0
  while k>0
    q=k%4
    cost+=10 if q<3&&s[q]>0
    s[q]+=l[i]
    k/=4
    i+=1
  end
  s.pop
  if s.all?{|a|a>0}
    cost+=adj(g,s)
    min=cost if cost<min
  end
}
puts min