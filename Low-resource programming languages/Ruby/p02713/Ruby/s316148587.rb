k = gets.chomp.to_i

sum = 0

for a in 1..k do
  for b in 1..k do
    for c in 1..k do
      sum += a.gcd(b).gcd(c)
    end
  end
end

puts sum
