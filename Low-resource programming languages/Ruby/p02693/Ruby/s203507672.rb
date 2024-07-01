n=gets.to_i
s=gets.split.map(&:to_i)
s.sort!
ans=1
for i in 0..n-1
  ans*=s[i]
  if ans>10**18
    re=1
    break
  end
end
if re==1
  puts -1
else
  puts ans
end
