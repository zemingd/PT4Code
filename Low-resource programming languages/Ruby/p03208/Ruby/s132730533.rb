n,k=gets.split.map &:to_i
p=[]
for i in 1..n
  p<<gets.to_i
end
p.sort!
mi=10**18
for i in 0..n-k
  mi=[mi,p[i+k-1]-p[i]].min
end
puts mi