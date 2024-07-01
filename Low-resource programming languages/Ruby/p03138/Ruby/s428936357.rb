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

c /= 2 while k < c

ret = 0

as.each do |a|
  ret += c^a
end

p ret