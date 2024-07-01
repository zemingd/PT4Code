n = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

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

t = Array.new(10**6 + 2, false)

f = true
ff = false
A.each do |a|
  li = a.my_divisor_list
  li.shift
  li.each do |u|
    if t[u]
      f = false
      ff = true
      break
    else
      t[u] = true
    end
  end
  if ff
    break
  end
end
if f
  puts 'pairwise coprime'
  exit
end

class Array
  def gcd
    inject(:gcd)
  end
end

if A.gcd == 1
  puts 'setwise coprime'
  exit
end

puts 'not coprime'
