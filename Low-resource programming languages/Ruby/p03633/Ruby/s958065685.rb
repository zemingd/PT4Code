n = gets.to_i
ans = 1
n.times do
  t = gets.to_i
  ans *= t / ans.gcd(t)
end
puts ans