K = gets.to_i()
sum = 0
for a in 1..K do
  for b in 1..K do
    v = a.gcd(b)
    for c in 1..K do
      sum = sum + c.gcd(v)
    end
  end
end
puts (sum)