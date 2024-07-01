a,b = gets.split(' ').map(&:to_i)

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

aaa =  a.my_divisor_list # => [1, 13]
bbb = b.my_divisor_list

ccc = aaa & bbb
#puts ccc
ans = 0

require 'prime'

#puts Prime.prime?(1)
ccc.each do |i|
  if Prime.prime?(i)
    ans+=1
  end
end
#puts ccc
puts ans+1
