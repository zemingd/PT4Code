a, b = gets.split.map(&:to_i)
a, b = b, a if b < a

ans = 1
is_prime = Array.new(10 ** 7) { true }
is_prime[0] = false
is_prime[1] = false
2.upto([is_prime.size - 1, a].min) do |i|
  next unless is_prime[i]
  (i + i).step(is_prime.size - 1, i) do |j|
    is_prime[j] = false
  end
  ans += 1 if a % i == 0 && b % i == 0
end

puts ans