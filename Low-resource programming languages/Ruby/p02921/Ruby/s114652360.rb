s=gets.chomp
a=gets.chomp
ans=0
for i in 0..2
  if s[i]==a[i]
    ans+=1
  end
end
puts ans
