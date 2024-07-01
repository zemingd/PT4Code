def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

def gcd_all(a)
  return a[0] if a.size == 1
  g = gcd(a[0], a[1])
  return g if a.size == 2
  a[2..-1].each do |ai|
    g = gcd(ai, g)
  end
  g
end

n = gets.to_i
a = gets.split.map(&:to_i)

p 0.upto(n - 1).map { |i| a[0...i] + a[(i + 1)...n] }.map(&method(:gcd_all)).max