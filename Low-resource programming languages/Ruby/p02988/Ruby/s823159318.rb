n=gets.to_i
p=gets.slice.map(&:to_i)
c=0
0.upto(n-2){|i|([p[i],p[i+1],p[i+2]].sort)[1]==p[i+1] ?c+=1:0 }
puts c