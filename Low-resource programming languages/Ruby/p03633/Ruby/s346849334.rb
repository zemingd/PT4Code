n = gets.to_i
t = n.times.map{gets.to_i}
tmp = t[0]
for i in 1..n-1
  m = t[i]
  l = tmp
  while l%m != 0
    l,m = m,l%m
  end
  tmp = (t[i]*tmp)/m
end
puts tmp