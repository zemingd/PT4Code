A,B=gets.split.map(&:to_i)
#A,B=10**12, 10**12-100

g = A.gcd(B)
ans = 1
(2..(g**0.5).to_i).each do |i|
  if g%i == 0
    ans += 1
  end
  
  while g%i == 0
    g /= i
  end
end
if g != 1
  ans += 1
end
puts ans