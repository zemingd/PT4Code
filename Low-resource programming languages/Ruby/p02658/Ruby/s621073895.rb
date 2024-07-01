n=gets.split.map(&:to_i)
s=gets.split.map(&:to_i)
ans=1
for i in 0..n-1
  ans*=s[i]
end
if ans>10**18
  puts -1
else
  puts ans
end
