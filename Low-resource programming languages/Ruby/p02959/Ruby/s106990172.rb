n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
b = gets.chop.split.map(&:to_i)

a2=a.reverse
b2=b.reverse


ans=0
ans2=0

for i in 0..n-1 do
  if b[i] >= a[i] then
    ans += a[i]
    b[i] = b[i]-a[i]
  else
    ans += b[i]
    b[i] = 0
  end

  if b[i] >= a[i+1] then
    ans += a[i+1]
    b[i] = b[i]-a[i+1]
  else
    ans += b[i]
    b[i] = 0
  end
end


for i in 0..n-1 do
  if b2[i] >= a2[i] then
    ans2 += a2[i]
    b2[i] = b2[i]-a2[i]
  else
    ans2 += b2[i]
    b2[i] = 0
  end

  if b2[i] >= a2[i+1] then
    ans2 += a2[i+1]
    b2[i] = b2[i]-a2[i+1]
  else
    ans2 += b2[i]
    b2[i] = 0
  end
end

puts [ans, ans2].max
