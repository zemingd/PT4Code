n=gets.to_i
s=gets.split.map!(&:to_i)
for i in 1..100
  ans=0
  for j in 0..n-1
    ans+=(s[j]-i)**2
  end
  if i==1
    max=ans
  elsif max>ans
    max=ans
  end
end
puts max
