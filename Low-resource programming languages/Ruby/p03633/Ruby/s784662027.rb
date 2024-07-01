def gcd(x,y)
  return x if y == 0
  gcd(y, x.modulo(y))
end
def lcm(x,y)
  x * y / gcd(x,y)
end

n = gets.to_i
l = 1
(1..n).each do |i|
  l = lcm l, gets.to_i
end
puts l
