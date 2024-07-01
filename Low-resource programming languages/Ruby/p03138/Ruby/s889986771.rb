#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)
a = gets.chomp.split(/ /).map(&:to_i)

score = 0
(0..k).each do |i|
  inj = a.inject(0){|s, enum| s += enum ^ i}
  score = inj if inj > score
end
puts score