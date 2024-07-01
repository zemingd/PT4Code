n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
for i in 1..n-1 do
  if a[i]==a[i-1]+1 then
    s+=c[a[i-1]-1]
  end
  s+=b[i]
  
end
p s