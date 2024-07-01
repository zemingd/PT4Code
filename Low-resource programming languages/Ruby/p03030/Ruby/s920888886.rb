n=gets.to_i
a=[]
1.upto(n){|i|x=gets.split;a<<[i,x[0],x[1].to_i]}
puts a.sort{|a,b|(a[1]<=>b[1]).nonzero?||(b[2]<=>a[2])}.map{|x|x[0]}