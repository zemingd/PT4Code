def gcd(a, b)
  r = a % b
  while r > 0
    a = b
    b = r
    r = a % b
  end
  return r
end
A, B, C, D = gets.split.map!(&:to_i)
num = B - A + 1
GCD = if C - D > 0
    gcd(C, D)
  else
    gcd(D, C)
  end
2.times do |i|
  num -= (B - A + 1) / nums[i]
end
num += (B - A + 1) / GCD
puts num