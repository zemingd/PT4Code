def gcd_of_2(p, q)
  while true
    r = p % q
    if r == 0
      return q
    end
    p = q
    q = r
  end
end

n = gets.to_i
a = gets.split.map(&:to_i)
max_gcd = 1
for j in 0...n do
  i = 0
  i += 1 if i == j
  gcd = a[i]
  for k in 0...(n-2) do
    i += 1
    i += 1 if i == j
    gcd = gcd_of_2(gcd, a[i])
  end
  max_gcd = gcd if gcd > max_gcd
end
print max_gcd
