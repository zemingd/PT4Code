def gcd(a, b)
  a, b = b, a if a > b
  while b % a != 0
    d = a
    a = b % a
    b = d
  end
  a
end

def lcm(a, b)
  a * b / gcd(a, b)
end

n = gets.chomp.to_i
ts = n.times.map do
  gets.chomp.to_i
end

c = ts.inject do |a, b|
  lcm(a, b)
end

p c