n,*w=gets(p).split.map &:to_i
s1=w.inject(:+)
s2=0
p w.map{|x|s1-=x;s2+=x;(s1-s2).abs}.min