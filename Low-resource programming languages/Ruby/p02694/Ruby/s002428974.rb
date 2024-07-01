n=gets.to_i
i=0
ans=100
while ans<n
  i+=1
  ans=ans+(ans/100)
end
puts i
