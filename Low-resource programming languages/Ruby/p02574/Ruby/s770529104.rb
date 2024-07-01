require 'prime'
require 'set'

n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

def gcd(n1, n2)
  return n2 if n1 % n2 == 0
  gcd(n2, n1 % n2)
end

if a.inject() { |acc, k| gcd(acc, k) } > 1
  puts 'not coprime'
else
  q = Set.new
  setwise_coprime = false

  a.each do |k|
    primes = k.prime_division.map(&:first)
    primes.each do |prime|
      if q.member?(prime)
        setwise_coprime = true
        break
      else
        q << prime
      end
    end
  end

  if setwise_coprime
    puts 'setwise coprime'
  else
    puts 'pairwise coprime'
  end
end
