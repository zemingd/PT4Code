x=gets.to_i
a=100
i=0
while a<x
  a*=101
  a/=100
  i+=1
end
p i