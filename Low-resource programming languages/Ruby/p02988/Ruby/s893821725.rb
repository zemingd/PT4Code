n=gets.to_i
s=gets.split.map &:to_i
ans=0
for i in 0..n-3
  if [s[i],s[i+1],s[i+2]].min !=s[i+1] && [s[i],s[i+1],s[i+2]].max !=s[i+1]
    ans+=1
  end
end
puts ans
