a,b=gets.split(' ')
s=(a+b).to_i
res,n,i='No',0,1
while n<s
  n=i**2
  res='Yes' if s==n
  i+=1 
end
puts res