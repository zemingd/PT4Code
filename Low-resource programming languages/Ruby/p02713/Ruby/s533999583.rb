n = gets.chomp.to_i

result = 0
for i in 1..n do
  for j in 1..n do
    for k in 1..n do
      result += k.gcd(j.gcd(i))
    end
  end
end

puts result