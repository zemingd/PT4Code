n, m = gets.split.map &:to_i
as = gets.split.map { |s| s.to_i >> 1 }

def gcd(a, b)
  b, a = a, b if a > b
  while a > 0
    b -= a
    a, b = b, a if a > b
  end
  b
end

def lcm(a, b)
  a * b / gcd(a, b)
end

l = as.inject do |a, b|
  c = lcm(a, b)
  if c > m
    puts 0
    exit
  end
  c
end

p (m / l + 1) / 2