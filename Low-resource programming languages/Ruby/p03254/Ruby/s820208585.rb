N,X=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)
A.sort!
i=0
s=0
ans=0
while i<N
  s+=A[i]
  if(s<=X)
    ans=i+1
  end
  i+=1
end
puts ans