n = gets.chomp.to_i

def gcd(a, b)
  (a, b) = [[a, b].min, [a, b].max]
  return (a == 0) ? b : gcd(b % a, a)
end

def lcm(a, b)
  (a * b) / gcd(a, b)
end

x = gets.chomp.to_i
(n - 1).times do
  t = gets.chomp.to_i
  x = lcm(x, t)
end
puts x.to_s