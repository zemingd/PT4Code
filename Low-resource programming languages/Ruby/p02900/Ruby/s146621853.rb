require 'prime'
a, b = gets.chomp.split.map(&:to_i)

a, b = b, a if a > b
until a == 0
  a, b = b%a, a
end

# bが最大公約数
k = []

def my_divisor_list(a)
  return [1] if self == 1
  Prime.prime_division(a).map do |e|
    Array.new(e[1]+1).map.with_index do |element, i|
      e[0]**i
    end
  end.inject{|p,q| p.product(q)}.map do |a|
    [a].flatten.inject(&:*)
  end.sort
end
k = my_divisor_list(b)

def prime_or_1?(n)
  return true if n == 1
  return true  if n == 2 or n == 3
  return false if (n % 2).zero?
  3.step(Math.sqrt(n).to_i, 2) {|i| return false if (n % i).zero?}
  true
end

p k.select{ |i| prime_or_1?(i) }.size
