require 'prime'

PrimeChecker = Prime.instance

x = gets.to_i

loop do
  break if PrimeChecker.prime?(x)
  x += 1
end

puts x
