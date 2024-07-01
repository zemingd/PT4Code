def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

def lcm(a, b)
  return a * b / gcd(a, b)
end

n = gets.chomp.split(' ').map(&:to_i)[0]
t = []
n.times {|n| t[n] = gets.chomp.split(' ').map(&:to_i)[0] }
m = 1
d = t[0]
t.each do |t|
  m = lcm(m, t)
  d = gcd(d, t)
end
puts m / d