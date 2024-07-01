x = gets.to_i

ans = 1
for i in 2...x
  t = i
  while t*t<=x
    t *= t
  end
  ans = t if ans<t && t!=i
end

p ans