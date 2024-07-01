require 'prime'

N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i)

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

b_array=Array.new(N,0)
N.downto(1) do |i|
    sum = 0
    target = i*2
    while target <= N do
        sum = (sum + array[target-1])%2
        target += i
    end
    if sum != array[i-1]
        b_array[i-1]=1
    end
end

m = 0
rets = []
b_array.each_with_index do |b,index|
    if b != 0
        m += 1
        rets.push(index+1)
    end
end
puts m
puts rets.join(" ") if m > 0
