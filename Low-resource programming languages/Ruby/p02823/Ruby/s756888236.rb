n,a,b=gets.split.map(&:to_i)
if (b-a)%2==0
  res=(b-a)/2
elsif n-a<b-1
  res=n-a
else
  res=b-1
end
p res