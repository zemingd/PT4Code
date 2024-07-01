num = gets.to_i

sum = 0

for i in 1..num
  for k in 1..num
    a = i.gcd(k)
    for j in 1..num
      sum += a.gcd(j)
    end
  end
end

puts sum