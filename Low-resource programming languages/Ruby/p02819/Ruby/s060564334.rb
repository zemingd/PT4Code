x = gets.chomp.to_i

primes = []
n = 2

while n <= Math.sqrt(x).to_i
  prime_flag = true

  primes.each do |prime|
    prime_flag = false if n % prime == 0
  end

  primes << n if prime_flag
  n += 1
end



while 1
  prime_flag = true

  primes.each do |p|
    prime_flag = false if x % p == 0
  end

  if prime_flag == true
    p x
    exit
  end

  x += 1
end

