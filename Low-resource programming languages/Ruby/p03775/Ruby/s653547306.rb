require 'prime'

n = gets.to_i
divisors = Prime.prime_division(n)

def f(a, b)
  [a.to_s.size, b.to_s.size].max
end

products = Array.new(divisors.size + 1) { Array.new }

products[0] << 1

divisors.each_with_index do |(divisor, number), index|
  (0..number).each do |num|
    products[index].each do |product|
      if num == 0
        products[index + 1] << product
      else
        products[index + 1] << product * divisor ** num
      end
    end
  end
end

ans = []
products.last.each do |a|
  b = n / a
  ans << f(a, b)
end
puts ans.min
