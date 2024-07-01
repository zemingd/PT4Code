n,x=gets.split.map &:to_i
a=gets.split.map(&:to_i).sort
i,ans=0,0
while i<n-1&&a[i]<=x
  ans+=1
  x-=a[i]
  i+=1
end
if i==n-1&&a[i]==x then ans+=1 end
p ans
