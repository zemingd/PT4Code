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

_n = gets.chomp.to_i
ns = gets.chomp.split.map(&:to_i)

m = ns.inject do |a, b|
  lcm(a, b)
end
m -= 1

sum = ns.inject(0) do |sum, n|
  sum + m % n  
end

p sum