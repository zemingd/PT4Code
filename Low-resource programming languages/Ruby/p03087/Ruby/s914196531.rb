gets
s=gets
t=0,u=0
s.size.times{|i|t<<u+=s[i,2]=="AC"?1:0}
$<.map{|x|p eval'-t[%d]+t[%d]'%x.split}