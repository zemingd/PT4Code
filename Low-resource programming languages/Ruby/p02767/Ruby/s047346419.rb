n=gets.to_i
x=gets.split.map &:to_i
j=0
res=[]
while j <= x.max
  sum=0
  n.times do |i|
    tmp = (x[i]-j)**2
    sum+=tmp
  end
  res << sum
  j+=1
end
puts res.min