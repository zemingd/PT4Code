N=gets.to_i
a=N.times.map{gets.to_i}
res=0
i=0
j=1
while true
  res+=1
  break if a[i]===2
  if j >= N
    res=-1
    break
  end
  i=a[i]-1
  j+=1
end
puts res