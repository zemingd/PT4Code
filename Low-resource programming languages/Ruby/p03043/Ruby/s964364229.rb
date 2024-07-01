n,k=gets.split.map(&:to_i)
ans=0
for i in 1..n
  j=0
  while i<k
    j+=1
    i*=2
  end
  ans+=1.0/(n*2**j)
end
puts ans
