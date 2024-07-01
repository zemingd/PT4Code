k = gets.to_i
a = 1
b = 1
c = 1
ans = 0
while a <= k
  while b <= k
    while c <= k
      ans += a.gcd(b.gcd(c))
      c += 1
    end
    c = 1
    b += 1
  end
  b = 1
  a += 1
end
puts ans