# frozen_string_literal: true

require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)
flag = true
(0..(n - 2)).each do |i|
  ((i + 1)..(n - 1)).each do |j|
    if a[i].gcd(a[j]) != 1
      flag = false
      break
    end
  end
  break unless flag
end
if flag
  puts 'pairwise coprime'
  exit
end

g = a[0]
(1..(n - 1)).each do |i|
  g = g.gcd(a[i])
end

if g == 1
  puts 'setwise coprime'
else
  puts 'not coprime'
end
