x=gets.to_i
l=[1]
i=2
j=2
c=i**j
while c<=x
  while c<=x
    l << c
    j+=1
    c=i**j
  end
  i+=1
  j=2
  c=i**j
end
puts l.max