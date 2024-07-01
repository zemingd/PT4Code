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

while a > 1 && b > 1 do
  while a % d == 0 && b % d == 0 do
    ans += 1 if dtmp != d
    dtmp = d
    a /= d
    b /= d
  end
  d += 1
  break if d > a || d > b
end

puts ans