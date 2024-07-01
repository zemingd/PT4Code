a,b,c=gets.split.map  &:to_i
i=1
res=false
while i<=10000
  asum=a*i
  if ((asum%b)==c)
    res = true
    break
  end
  i+=1
end
puts res ? 'YES' : 'NO'