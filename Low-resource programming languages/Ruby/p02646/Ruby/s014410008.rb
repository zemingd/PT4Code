a, v = gets.split.map &:to_i
b, w = gets.split.map &:to_i
t = gets.to_i

able = false
if a < b
  able = a + v * t >= b + w * t && v.gcd(w) <= t
else
  able = a + v * t <= b + w * t && v.gcd(w) <= t
end

if able
  puts "YES"
else
  puts "NO"
end
