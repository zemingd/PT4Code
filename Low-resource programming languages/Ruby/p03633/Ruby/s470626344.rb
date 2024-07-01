def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

def lcm(a, b)
  a * b / gcd(a, b)
end

n = gets.to_i
t = n.times.map { gets.to_i }

puts n == 1 ? t[0] : t.each_cons(2).reduce(1) {|r, (t1, t2)| lcm(r, lcm(t1, t2))}