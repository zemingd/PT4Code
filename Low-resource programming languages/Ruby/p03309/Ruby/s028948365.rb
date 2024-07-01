n = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
b = []
d = 0
for i in 0..n-1
  b[i] = a[i]-i-1
  d += a[i]-i-1
end
d /= n
#p d
cnt = 10**9
for i in 0..4
  t = 0
  for j in 0..n-1
   t += (b[j] - d + i - 2).abs
  end
  if cnt > t
      cnt = t
  end
  #puts t
end
puts cnt