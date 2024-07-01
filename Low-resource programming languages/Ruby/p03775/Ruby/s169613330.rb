require 'prime'
n = STDIN.gets.to_i
divisors = [1]
primes = []
n.prime_division.each do |prime|
  prime[1].times { primes << prime[0] }
end

1.upto(primes.size) do |i|
  primes.combination(i) do |prime|
    divisors << prime.reduce(:*)
  end
end

divisors = divisors.uniq.sort
min = n.to_s.size
divisors.uniq.sort.each do |num|
  o = n / num
  m = [o.to_s.size, num.to_s.size].max
  if m < min
    min = m
  end
end
puts min
