n=gets.to_i
v=gets.split.map &:to_i
a=Array.new(100000,0)
b=Array.new(100000,0)
c=Array.new(100000,0)
n.times{|i|
  if i[0]==0 then
    a[v[i]-1]+=1
  else
    b[v[i]-1]+=1
  end
  c[v[i]-1]+=1-2*i[0]
}
t=c.index(c.map(&:abs).max)
if c[t]>=0 then
  b[t]=0
else
  a[t]=0
end
p n-a.max-b.max