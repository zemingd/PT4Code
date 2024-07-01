a, b = gets.split.map(&:to_i)
c = a.gcd(b)

ans = 1
is_prime = Array.new(10 ** 6) { true }
is_prime[0] = false
is_prime[1] = false
2.upto([is_prime.size - 1, c].min) do |i|
  next unless is_prime[i]
  (i + i).step(is_prime.size - 1, i) do |j|
    is_prime[j] = false
  end
  ans += 1 if c % i == 0
end

puts ans
