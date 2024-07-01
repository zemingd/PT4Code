require "prime"
primes = Array.new(10 ** 6, 0)
Prime.each(10 ** 6) { |i| primes[i] = 1 }
x = gets.to_i

(x...10**6).each do |i|
  if primes[i] == 1
    p i
    exit
  end
end