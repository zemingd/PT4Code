h=gets.to_i
num=1
ans=0
while 1<h
  ans+=num
  num*=2
  h>>=1
end
puts ans+num
