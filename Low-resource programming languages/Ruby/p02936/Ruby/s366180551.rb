n,q=gets.split.map(&:to_i)
t=Array.new(n){[]}
(n-1).times{a,b=gets.split.map(&:to_i);a-=1;b-=1;t[a]<<b;t[b]<<a}
o=Array.new(n,0)
q.times{i,x=gets.split.map(&:to_i);o[i-1]+=x}
q=[[0,0]];a=[]
while !q.empty?;d,c=q.shift;a[d]=c+o[d];t[d].map{|b|q<<[b,c+o[d]]if !a[b]}if !t[d].empty?;end
puts a
