n=gets.to_i
count=0
while n>9
  x6=x9=1
  while x9*9<=n
    x9*=9
  end
  while x6*6<=n
    x6*=6
  end
  n-= x9>x6 ? x9: x6
  p x9>x6 ? x9: x6
  count+=1
  p n
end
count+=n
p count
