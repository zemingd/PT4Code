a = gets.split(' ').map(&:to_i)

if a.count == 2
  puts a.max
  exit
end


def gcd(a, b)
  if b == 0
    return a
  end
  return gcd(b, a % b)
end

k = a[0]
for i in 1..(a.count-1) do
  k = gcd(k, a[i])
end

min = a.min

if k == min
  a.delete(min)
  l = a[0]
  for i in 1..(a.count-1) do
  	l = gcd(l, a[i])
  end
  puts l
else
  l = a[0]
  c = []
  for i in 1..(a.count-1) do
  	l = gcd(l, a[i])
    if l <= k
      c << a[i-1]
      c << a[i]
      break
    end
  end
  
  a1 = a.map.to_a
  a2 = a.map.to_a
  
  a1.delete(c[0])
  a2.delete(c[1])
  
  l1 = a1[0]
  for i in 1..(a1.count-1) do
  	l1 = gcd(l1, a1[i])
  end
  
  l2 = a2[0]
  for i in 1..(a2.count-1) do
  	l2 = gcd(l2, a2[i])
  end
  
  if l1 > l2
    puts l1
  else
    puts l2
  end
  
end



