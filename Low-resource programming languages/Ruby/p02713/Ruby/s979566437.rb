def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

def gcd_3elem(a, b, c)
  gcd_2elem = gcd(a, b)
  gcd(c, gcd_2elem)
end

n = gets.chomp.to_i

s = 0
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      s += gcd_3elem(i, j, k)
    end
  end
end

puts s