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

def cm_res(num_ary, n)
  h1=Hash.new(0)
  num_ary.each{|elem|
    factor=elem.my_divisor_list.reverse!

    factor.each{|e|
      
      h1[e]=h1[e]+1
    }
    
  }
  ary=((h1.key(n-1)).to_s).to_i
  
end

n=gets.chop.to_i
a = gets.chop.split.map(&:to_i)

puts cm_res(a,n)