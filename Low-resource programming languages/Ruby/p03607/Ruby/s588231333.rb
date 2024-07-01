n=gets.to_i
as=n.times.map{gets.to_i}.sort
ans=0
cur=1
(n-1).times do |i|
  if as[i]==as[i+1]
    cur+=1
  else
    ans+=1 if cur.odd?
    cur=1
  end
end
ans+=1 if cur.odd?
puts ans
