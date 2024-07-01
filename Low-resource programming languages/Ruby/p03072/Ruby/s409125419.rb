n=gets.to_i
hs=gets.split.map(&:to_i)
ans=0
max=-1
hs.each do |hi|
  if max<=hi
    ans+=1
    max=hi
  end
end
puts ans
