n,k=gets.split.map(&:to_i)
ans=1
while n>=k
  n/=k
  ans+=1
end
puts ans
