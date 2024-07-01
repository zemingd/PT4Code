#require 'pp'
require 'prime'

def divisors(n)
  i = 1
  divisors = []
  while i ** 2 <= n
    if n % i == 0
        divisors << i
        if i * i != n
            divisors << (n / i)
        end
    end
    i += 1
  end 

  divisors
end

a, b = gets.chomp!.split(" ").map(&:to_i)
x = divisors(a)
y = divisors(b)

candidates = (x & y).sort
count = 1

candidates.each do |n|
    if Prime.prime?(n)
        count += 1
    end
end

puts count
