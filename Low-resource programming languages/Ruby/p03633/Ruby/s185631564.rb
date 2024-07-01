def gcd(a, b)
  return a if b.zero?
  gcd(b, a % b)
end

N = gets.to_i
Ts = Array.new(N) { gets.to_i }

ans = Ts[0]
(1...N).each { |i| ans = ans * Ts[i] / gcd(ans, Ts[i]) }

puts ans
