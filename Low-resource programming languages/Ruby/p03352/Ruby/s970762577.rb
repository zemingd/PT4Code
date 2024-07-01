x = gets.to_i

ans = 1
for i in 2...x
  t = i
  next if t*t>x
  while t*t<=x
    t *= t
  end
  ans = t if ans<t
end

p ans