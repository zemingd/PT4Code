require 'prime'
n = gets.chomp.to_i
a = b = 1
primes = Prime.prime_division(n)
primes.reverse.each do |pair|
  prime = pair[0]
  count = pair[1]
  count.times do
    if a <= b
      a = a * prime
    else
      b = b * prime
    end
  end
end

if a <= b
  puts Math.log10(b).to_i + 1
else
  puts Math.log10(a).to_i + 1
end