n,m=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
bcs=m.times.map{gets.split.map(&:to_i)}.sort{|a,b| b[1]<=>a[1]}
new=[]

i=0
while i<m && new.size<n
  [bcs[i][0],n-new.size].min.times{new.push(bcs[i][1])}
  i+=1
end

x=0
while x<n && x<new.size
  if as[x]<new[x]
    x+=1
  else
    break
  end
end

if x==0
  puts as.inject(:+)
else
  puts (as[x..-1]+new[0..x-1]).inject(:+)
end
