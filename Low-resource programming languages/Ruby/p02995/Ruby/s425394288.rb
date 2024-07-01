a, b, c, d = gets.split.map(&:to_i)
if c == 1 || d == 1
  puts "0"
  exit
end
ans = b - a + 1
ans -= b / c - a / c
ans -= b / d - a / d
lcm = c / c.gcd(d) * d
ans += b / lcm - a / lcm
puts ans