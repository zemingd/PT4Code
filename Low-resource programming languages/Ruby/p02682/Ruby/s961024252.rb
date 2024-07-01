a,b,c,k=gets.split.map(&:to_i)
ans=0
num=k
if a > k
  p k
  exit
else
  ans+=a
  num-=a
end
num-=b
if num<0
  p ans
  exit
end
ans-=num
p ans
