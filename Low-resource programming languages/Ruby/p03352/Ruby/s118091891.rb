n=gets.to_i
i=2
max=1
while i<32 do
  m=1
  while m*i<n do
    m*=i
  end
  if max<m then max=m end
  i+=1
end
puts max