n=gets.to_i
s=gets.chomp
ans=1
n.times do|i|
  next if i==0
  if s[i]==s[i-1]
    next
  else
    ans+=1
  end
end
puts ans
