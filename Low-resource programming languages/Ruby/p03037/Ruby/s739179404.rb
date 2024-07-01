#!/usr/bin/env ruby

(n, m) = gets.chomp.split(/ /).map(&:to_i)
lm = 0
rm = 100001
m.times do
  (l, r) = gets.chomp.split(/ /).map(&:to_i)
  lm = lm > l ? lm : l
  rm = rm < r ? rm : r
end
if lm == rm
  puts 1
elsif lm > rm
  puts 0
else
  puts rm - lm + 1
end
