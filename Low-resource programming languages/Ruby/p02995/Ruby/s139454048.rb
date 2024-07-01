def gcd(a, b)
  r = a % b
  r.zero? ? b : gcd(b, r)
end

a, b, d, e = gets.split.map(&:to_i)
g = d * e / gcd(d, e)
m = b - a + 1
cnt1 = b / d - (a - 1) / d
cnt2 = b / e - (a - 1) / e
cnt3 = b / g - (a - 1) / g
puts m - (cnt1 + cnt2 - cnt3)