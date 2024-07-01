n=gets.to_i
s=gets.split.map &:to_i
a=gets.split.map &:to_i
sum=0
for i in 0..n-1
  if s[i]<a[i]
    sum+= (a[i]>=(s[i]+s[i+1]))? (s[i]+s[i+1]):a[i]
    s[i+1]-= a[i]-s[i]
    s[i+1]=0 if s[i+1]<=0
  else
    sum+=a[i]
  end
end
puts sum
