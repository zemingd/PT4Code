#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)
a = gets.chomp.split(/ /).map(&:to_i)

s = a.sort[-1].to_s(2).size
str = '1' + '0' * s
#p str
if (str.to_i(2) <= k)
  st = str.to_i(2)
  en = k
else
  st = 0
  en = ('1' * s).to_i(2)
end
#p st
score = 0
(st..en).each do |i|
  inj = a.inject(0){|s, enum| s += enum ^ i}
  score = inj if inj > score
end
puts score


