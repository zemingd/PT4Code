require 'prime'
n = gets.to_i

count = 0

1.step(n, 2) do |i|
  count += 1 if Prime.prime_division(i).reduce(1) {|memo, n| memo * (n.last+1)} == 8
end

puts count