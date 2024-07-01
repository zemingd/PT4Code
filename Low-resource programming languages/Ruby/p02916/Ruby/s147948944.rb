n=gets.to_i
a=gets.split.map &:to_i
b=gets.split.map &:to_i
c=gets.split.map &:to_i
ans=b.sum
for i in 0..n-2
if a[i]+1 ==a[i+1]
  ans+=c[a[i]-1]
end
end
puts ans
