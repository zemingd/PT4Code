n=gets.to_i
s=gets.split.map &:to_i
wa=s[0]
max=0
sum=0
for i in 1..n-1
  if s[i]<=wa
    sum+=1
    max=[sum,max].max
  else
    sum=0
  end
  wa=s[i]
end
puts max
