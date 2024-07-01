n = gets.to_i
a= gets.split.map(&:to_i)
b=[0]
for num in 0..n-1 do
  if b.last + 1 == a[num]
    b << a[num]
  end  
end
if a.include?(1)
  if b.length == n+1
    p 0
  else 
    p n - b.length + 1
  end
else    
  p -1
end