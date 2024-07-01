def mult_gcd(nums)
  v = 0
  nums.each do |item|
    v = v.gcd(item)
  end
  v
end

K = gets.to_i()
sum = 0
for a in 1..K do
  for b in 1..K do
    for c in 1..K do
      sum = sum + mult_gcd([a, b, c])
    end
  end
end
puts (sum)