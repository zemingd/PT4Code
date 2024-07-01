N = gets.to_i
A = (1..N).map { gets.to_i }.sort.uniq

def gcd(a, b)
  return a if b==0
  return gcd(b, a%b)
end

puts (A.inject(1) {|s, x|
  s * x / gcd(s, x)
})

