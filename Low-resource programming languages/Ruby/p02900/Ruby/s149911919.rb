require "prime"

a, b = $stdin.readline.chomp.split(' ').map(&:to_i)

gcd = a.gcd(b)

cds = 1

primes = []
Prime.each do |p|
  if p <= gcd
    primes.push(p)
  else
    break
  end
end

cds += primes.select do |p|
  a.remainder(p).zero? && b.remainder(p).zero?
end.length

puts cds
