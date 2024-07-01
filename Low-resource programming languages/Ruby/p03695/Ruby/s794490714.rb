_,*a=`dd`.split.map{|e|e.to_i/400}
x,y=a.partition{|e|e>8}
puts '%d %d'%[y.empty? ? 1 : y.uniq.size,x.size+y.uniq.size]