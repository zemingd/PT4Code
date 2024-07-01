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

def main
  n = gets.to_i
  list = divisors(n)
  while list.size > 2
    list.delete_at 0
    list.delete_at -1
  end
  puts list[-1].to_s.size
end

main

