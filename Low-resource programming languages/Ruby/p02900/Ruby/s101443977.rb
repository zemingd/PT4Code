require 'set'
A, B = gets.split.map(&:to_i)

divisors = Set.new
(1..(Math.sqrt(A).to_i)).each do |n|
  next unless A % n == 0
  divisors.add(n) if B % n == 0
  m = A / n
  divisors.add(m) if B % m == 0
end
(1..(Math.sqrt(B).to_i)).each do |n|
  next unless B % n == 0
  divisors.add(n) if A % n == 0
  m = B / n
  divisors.add(m) if A % m == 0
end
sorted = divisors.to_a.sort
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
