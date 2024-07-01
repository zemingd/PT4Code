N = gets.chomp.to_i

def f(a, b)
  [a.to_s.size, b.to_s.size].max
end

require 'prime'

def _divisors(primes, k)
  Enumerator.new do |y|
    if primes.size == k
      y << 1
    else
      p, e = primes[k]
      _divisors(primes, k + 1).each {|d|
        (e + 1).times {|e1|
          y << p ** e1 * d
        }
      }
    end
  end
end

def divisors(n)
  _divisors(Prime.prime_division(n), 0).to_a.sort
end

a = divisors(N)
b = []
a.each do |e|
  b.push(f(e, N/e))
end
p b.min
