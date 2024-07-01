require 'set'
A, B = gets.split.map(&:to_i)

divisors = []
N = [A, B].min
(1..(Math.sqrt(N).to_i)).each do |n|
  next unless A % n == 0 && B % n == 0
  divisors.push(n)
  divisors.push(N / n)
end
sorted = divisors.sort
ans = 1 # 1
primes = []
sorted.each do |n|
  next if n == 1
  if primes.all? { |pr| n % pr != 0 }
    ans += 1
    primes.push(n)
  end
end
puts ans
