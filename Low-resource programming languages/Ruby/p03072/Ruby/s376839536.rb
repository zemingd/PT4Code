n = gets.to_i
array = gets.split.map(&:to_i)
s=0
sum=0
while s<n
  i=0
  brray=[]
  while i<s+1
    brray.push(array[i])
    i+=1
  end
  if brray[i-1] == brray.max
    sum+=1
  end
  s+=1
end
puts sum