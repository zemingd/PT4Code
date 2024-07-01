n = gets.to_i
res = n

for i in 0..10
  cc = 0
  t = i
  while t>0
    cc += t%6
    t /= 6
  end
  t = n-i
  while t>0
    cc += t%9
    t /= 9
  end
  if res>cc
    res = cc
  end
end
puts res