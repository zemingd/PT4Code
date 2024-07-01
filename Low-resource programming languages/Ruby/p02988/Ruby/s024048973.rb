gets
a=gets.split(" ").map{|e| e.to_i}
ans=0
(a.size-2).times{|e| ([a[e],a[e+1],a[e+2]].sort)[1]==a[e+1]?ans+=1:0}
p ans