k = gets.to_i
ans =0
for a in 1..k
  for b in 1..k
    for c in 1..k
      ans+= a.gcd(b.gcd(c))
    end
  end
end

p ans
