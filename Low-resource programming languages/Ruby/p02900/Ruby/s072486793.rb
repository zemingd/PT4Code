a, b = gets.chomp.split(' ').map(&:to_i)

gcd = a.gcd(b)
primes = []
(2..gcd).each do |n|
  primes << n if gcd % n == 0 && primes.all? { |prime| n % prime != 0 }
end

puts primes.size + 1
