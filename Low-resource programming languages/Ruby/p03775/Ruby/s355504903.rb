require "prime"
N = gets.to_i

numbers = [1]
primes = N.prime_division
while e = primes.pop
  e[1].times { numbers << e[0] }
end

result = 10**10
(1..numbers.length-1).each do |index|
  (index..numbers.length+1).each do |index2|
    copy = numbers.dup
    a_group = copy.select.with_index { |_, i| (index..index2).cover?(i) }
    b_group = copy.select.with_index { |_, i| !(index..index2).cover?(i) }
    result = [result, [a_group.inject(&:*).to_s.length, b_group.inject(&:*).to_s.length].max].min
  end
end
p result