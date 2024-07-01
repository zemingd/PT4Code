k = gets.chomp.to_i

ans = 0

for a in 1..k do
  for b in 1..k do
    for c in 1..k do
      ans += a.gcd(b).gcd(c)
    end
  end
end

puts ans
