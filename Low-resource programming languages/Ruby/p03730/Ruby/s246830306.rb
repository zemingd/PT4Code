def gcd(a, b)
  return a if b.zero?
  gcd(b, a % b)
end

A, B, C = gets.split.map(&:to_i)

D = gcd(A, B)
ans = (C % D).positive? ? 'NO' : 'YES'
puts ans
