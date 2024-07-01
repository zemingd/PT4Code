n,m=gets.split.map &:to_i
c=Array.new(n,0)
m.times do
  a,b=gets.split.map &:to_i
  c[a-1]+=1; c[b-1]+=1
end
n.times do|i|
  p c[i]
end
