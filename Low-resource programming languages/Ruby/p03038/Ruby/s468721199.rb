n,m=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort_by{|a,b| b<=>a}
bcs=m.times.map{gets.split.map(&:to_i)}.sort_by{|a,b| b[1]<=>a[1]}
new=[]
while new.size<n
  if as[0]>bcs[0][1]
    v=as.shift
    new.push(v)
  else
    v=bcs.shift
    new.push([v[1]]*[v[0],n-new.size].min)
    new.flatten!
  end
end
puts new.inject(:+)
