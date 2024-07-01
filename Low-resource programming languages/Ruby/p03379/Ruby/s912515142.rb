a=gets.to_i
n=gets.split.map(&:to_i)
t=0

while t<a do
  g= n.sort
  g.delete_at(t)
  puts g[a/2-1]
  t+=1
  g=n.sort
end
