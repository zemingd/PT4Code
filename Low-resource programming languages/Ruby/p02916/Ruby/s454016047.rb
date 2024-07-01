n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
ans=0
bef=-2
a.each do |i|
  ans+=b[i-1]
  ans+=c[bef] if bef+1 == i-1
  bef=i-1
end
p ans