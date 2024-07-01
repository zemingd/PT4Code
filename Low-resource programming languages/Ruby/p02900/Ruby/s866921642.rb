def gcd(a, b)
  r = a % b
  while r != 0 do
    a = b
    b = r
    r = a % b
  end
  return b
end

a, b = gets.chomp.split(" ").map(&:to_i)
ans = 1
d = 2
dtmp = 1
g = gcd(a, b)
max = g * 0.5

while g > 1 do
  while g % d == 0 do
    if dtmp != d
      ans += 1 
      dtmp = d
    end
    g /= d
  end
  d += 1
  break if d > g
end

puts ans