n,x=gets.split.map &:to_i
s=gets.split.map &:to_i
s.sort!
ans=x-s[0]
for i in 1...n
  ans=ans.gcd(x-s[i])
end
puts ans
