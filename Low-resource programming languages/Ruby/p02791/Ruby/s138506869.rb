n=gets.to_i
ps=gets.split.map(&:to_i)
min=ps[0]
ans=0
ps.each do |pn|
  if pn<=min
    min=pn
    ans+=1
  end
end
puts ans
