def prime_factorization(n)
  s = Math.sqrt(n).floor
  primes = Hash.new { |h, k| h[k] = 0 }
  while n % 2 == 0
    primes[2] += 1
    n /= 2
  end

  3.step(s, 2) do |i|

    while n % i == 0
      primes[i] += 1
      n /= i
    end

    break if n == 1
  end

  primes[n] = 1 if s < n
  primes
end

a, b = gets.split.map(&:to_i)
c = a.gcd(b)

primes = prime_factorization(c)
puts 1 + primes.keys.count
