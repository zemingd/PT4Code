n,x=gets.split.map(&:to_i)
a=n.times.map{gets.to_i}
ans = a.size
ans+= (x-a.sum)/a.min
p ans