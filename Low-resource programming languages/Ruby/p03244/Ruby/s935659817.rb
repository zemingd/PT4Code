n=gets.to_i
v=gets.split.map &:to_i
k=Hash.new(0)
g=Hash.new(0)
(0...n).map{|i|i%2==1?k[v[i]]+=1:g[v[i]]+=1}
k=k.sort{|a,b|b[1]<=>a[1]}
g=g.sort{|a,b|b[1]<=>a[1]}
k<<[0,0]
g<<[0,0]
p n-((k[0][0]!=g[0][0])?k[0][1]+g[0][1]:[k[1][1]+g[0][1],k[0][1]+g[1][1]].max)