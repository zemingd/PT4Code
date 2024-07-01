n=gets.to_i
v=gets.split.map &:to_i
a=(0...n/2).map{|i|v[i*2]}
b=(0...n/2).map{|i|v[i*2+1]}
tr1=a.max_by{|x|a.count(x)}
tr2=b.max_by{|x|b.count(x)}
if a.count(tr1)>b.count(tr2) then
  t=b.map{|x|(x==tr1)? 0:b.count(x)}.max
  p n-a.count(tr1)-(t ? t:0)
else
  t=a.map{|x|(x==tr2)? 0:a.count(x)}.max
  p n-b.count(tr2)-(t ? t:0)
end