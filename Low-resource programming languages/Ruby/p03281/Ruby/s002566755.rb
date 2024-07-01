require 'prime'

class Integer
  def my_divisor_list
    divisors = [1]
    primes = []
    Prime.prime_division(self).each do |prime|
      prime[1].times { primes << prime[0] }
    end

    1.upto(primes.size) do |i|
      primes.combination(i) do |prime|
        divisors << prime.inject { |a, b| a *= b }
      end
    end

    divisors.uniq!
    divisors.sort!
    return divisors
  rescue ZeroDivisionError
    return
  end
end

N = gets.to_i

c = 0

105.step(N, 2) do |i|
  c += 1 if i.my_divisor_list.size >= 8
end

puts c
