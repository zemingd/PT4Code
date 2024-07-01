n,m=gets.split.map(&:to_i)

x=gets.split.map(&:to_i)
x.sort!
z=Array.new(n,false)
dist=Array.new(n-1,0)
result=0

if n>=m
    p 0
    exit
elsif
for i in 0..m-2
    dist[i]=x[i+1]-x[i]
end
    
s=dist.length-(n-1)
dist.sort!
result=dist[0..s-1].sum
end

p result