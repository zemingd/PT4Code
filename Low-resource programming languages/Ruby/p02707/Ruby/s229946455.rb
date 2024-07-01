N=gets.to_i
a=gets.split.map &:to_i
i=1
while i<N
  res=0
  j=i
  while j<N
    if a[j-1]<=i
      res+=1
      j+=1
    else
      puts res
      break
    end
  end
  i+=1
end
