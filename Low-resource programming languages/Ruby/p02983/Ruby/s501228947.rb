l,r=gets.split.map &:to_i

x=[]
for i in l..r
  x.push([i%2019,i])
end

y=[]
i=x.min[1]
for j in (i+1)..r
  y.push([i*j%2019,i,j])
end

p y.min[0]