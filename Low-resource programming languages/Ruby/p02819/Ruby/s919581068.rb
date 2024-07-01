# X

x = gets.chomp.to_i

def eratosthenes_sieve(n)
  check = Array.new(n, false)
  primes = []

  (2..n).each do |i|
    if !check[i]
      primes << i

      (i..n).step(i).each do |j|
        check[j] = true
      end
    end
  end

  primes
end

y = x * 2

while true
  primes = eratosthenes_sieve(y)
  
  if primes.last >= x
    break
  end

  y = y * 2
end

puts primes.detect {|i| i >= x}
