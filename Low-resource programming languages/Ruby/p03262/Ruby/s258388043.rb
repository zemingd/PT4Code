n,x=gets.split.map &:to_i
s=gets.split.map &:to_i
s.sort!
ans=(x-s[0]).abs
for i in 1...n
  ans=ans.gcd((s[i]-s[i-1]).abs)
end
puts ans
