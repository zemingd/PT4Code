n=gets.to_i
s=gets.split.map &:to_i
ans=[]
for i in 1..n
  for j in 0..n-1
    if s[j]==i
      ans << j+1
    end
  end
end
puts ans.join
