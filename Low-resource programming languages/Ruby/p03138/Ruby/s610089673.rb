n,k=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)

b = 2
b *= 2 while b < k
b /= 2
c = 0
while b > 0
  t = 0
  as.each do |a|
    t += (a & b == 0) ? -1 : 1
  end
  if t < 0
    c += b
  end
  b /=2
end

b = 2
b *= 2 while b < k
b /= 2
d = 0
if k < c
  while b > 0
    if k&b == 1 && c&b == 1
      d += b
      b /= 2
    elsif k&b == 1 && c&b == 0
      d += (b-1)&c
      break
    else
      b /= 2
    end
  end
else
  d = c
end

ret = 0

as.each do |a|
  ret += d^a
end

p ret