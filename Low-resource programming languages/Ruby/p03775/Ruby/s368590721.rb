require 'prime'

class Integer
  def my_divisor_list
    divisors = [1]
    primes = []
    Prime.prime_division(self).each do |prime|
      prime[1].times {primes << prime[0]}
    end

    1.upto(primes.size) do |i|
      primes.combination(i) do |prime|
        divisors << prime.inject{|a,b| a *= b}
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
divisiors = N.my_divisor_list.select {|x| x <= Math.sqrt(N)}

ans = Float::INFINITY
f = 0

divisiors.each do |a|
	f = [a.to_s.length, (N/a).to_s.length].max
	ans = f if f < ans
end

p f