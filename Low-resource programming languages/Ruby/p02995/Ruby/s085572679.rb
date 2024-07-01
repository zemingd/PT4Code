def gcd(a, b)
  r = a % b
  r.zero? ? b : gcd(b, r)
end

a, b, d, e = gets.split.map(&:to_i)
g = d * e / gcd(d, e)
m = b - a + 1
cnt1 = (m * 1.0 / d - 0.1 ** 10).round
cnt2 = (m * 1.0 / e - 0.1 ** 10).round
cnt3 = (m * 1.0 / g - 0.1 ** 10).round
puts m - (cnt1 + cnt2 - cnt3)
