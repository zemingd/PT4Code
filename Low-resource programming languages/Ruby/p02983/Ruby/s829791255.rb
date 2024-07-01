l,r=gets.split.map &:to_i
a=[]
for i in l..r
  a.push([i%2019,i])
end
a.sort!
p a[0][1]*a[1][1]%2019