gets
s=gets
t=0,u=0
s.size.times{|i|t<<u+=s[i,2]=="AC"?1:0}
$<.map{|x|l,r=x.split.map &:to_i;p t[r]-t[l]}