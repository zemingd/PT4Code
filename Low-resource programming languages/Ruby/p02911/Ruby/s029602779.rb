n,k,q=gets.split.map(&:to_i)
as=q.times.map{gets.to_i}
ps=[0]*n
as.each{|an| ps[an-1]+=1}
ps.each{|pn| puts k-q+pn>0 ? "Yes":"No"}
