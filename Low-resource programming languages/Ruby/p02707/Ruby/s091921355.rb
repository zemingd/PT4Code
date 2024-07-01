n=gets.to_i
s=gets.split.map!(&:to_i)
ans=Array.new(n,0)
for i in 0..n-2
  ans[s[i]-1]+=1
end
puts ans
