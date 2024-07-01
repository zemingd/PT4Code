#!/usr/local/bin/ruby
n = gets.to_i
count = 0
(0..9).to_a.repeated_permutation(4) do |a,b,c,d|
 if a+b+c+d == n
  count += 1
 end
end
puts count