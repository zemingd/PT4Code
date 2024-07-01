x = gets.to_i

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


x.my_divisor_list.map do |d|
  flag = true
  (-d).upto(d) do |num|
    if ((d + num) ** 5) - ((num) ** 5) == x
      puts "#{d + num} #{num}"
      flag = false
      break
    end
  end
  break if !flag
end
