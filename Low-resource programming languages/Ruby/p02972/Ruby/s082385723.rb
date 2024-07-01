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

n = gets.to_i
as = gets.split.map(&:to_i)
as.unshift("")
bs = []
cs = Array.new(n+1,0)
min = 1+n/2
for i in min..n
  if as[i]==1
    bs.push(i)
    i.my_divisor_list.each {|j| cs[j]=(cs[j]+1)%2}
  end
end
for i in 1..min-1
  bs.push(min-i) if as[min-i]!=cs[min-i]
  (min-i).my_divisor_list.each {|j| cs[j]=(cs[j]+1)%2} if as[min-i]!=cs[min-i]
end
puts bs.size
puts bs.join(" ")
