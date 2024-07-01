N=gets.to_i
i=1
def contain?(n)
 if(n==0)
  return false
 elsif(n%10==3)
  return true
 else
  contain?(n/10)
end
end
while(i<=N)
 if(i%3==0||contain?(i))
  print" #{i}"
 end
 i=i+1
end
print"\n"

