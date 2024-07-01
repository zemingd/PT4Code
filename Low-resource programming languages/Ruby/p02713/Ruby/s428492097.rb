K = gets.to_i

ans = 0
for a in 1..K do
  for b in 1..K do
    for c in 1..K do
      ans += a.gcd(b.gcd(c))
    end
  end
end

print ans