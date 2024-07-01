n=gets.to_i
s=gets
ans=n
for i in 1..(n-1) do
  if s[i-1]==s[i]
    ans=ans-1
  end
end
puts ans
