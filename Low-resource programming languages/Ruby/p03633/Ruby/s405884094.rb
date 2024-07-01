def gcd(a, b)
  a, b = b, a if a < b
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
t.each { |t| m = lcm(m, t) }
puts m