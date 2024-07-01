n = gets.to_i
a = []
for num in 1..n do
  m = gets.to_i
  if a.include?(m)
    a.delete(m)
  else  
    a << m
  end  
end
p a.length