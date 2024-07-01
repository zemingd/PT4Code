n=gets.to_i
ary=gets.split.map(&:to_i)
min=ary.first
ans=1
(1..n-1).each do |i|
  if ary[i]<min
    ans+=1
    min=ary[i]
  end
end
puts ans