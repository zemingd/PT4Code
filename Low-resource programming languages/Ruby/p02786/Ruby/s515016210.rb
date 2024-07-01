a=gets.to_i;
c=1
if a==1
  p c
  exit
end
while(1)
  l=2**c-1
  if a <= l
  	p 2**c-1
    exit
  end
  c+=1
end