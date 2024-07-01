require "prime"
N = gets.to_i

numbers = [1]
primes = N.prime_division
while e = primes.pop
  e[1].times { numbers << e[0] }
end

result = 10**10
(1..numbers.length-1).each do |index|
  combi = numbers.partition.with_index { |n, i| i < index }
  result = [result, [combi[0].inject(&:*).to_s.length, combi[1].inject(&:*).to_s.length].max].min
end
p result