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

n = gets.to_i
arr = divisors(n)
min = 1000000001
arr.each do |r|
  l = n / r
  max = [r.to_s.length, l.to_s.length].max
  min = [min, max].min
end
puts min