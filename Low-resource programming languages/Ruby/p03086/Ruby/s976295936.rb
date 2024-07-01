S=gets.chomp
ans=l=r=0
while l<S.size
  l+=1 until l==S.size || "ACGT".include?(S[l])
  r+=1 while r<S.size && "ACGT".include?(S[r])
  ans=[r-l,ans].max
  l=r+=1
end
p ans
