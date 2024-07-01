#!/usr/bin/env ruby

(n, m) = gets.chomp.split(/ /).map(&:to_i)
x = gets.chomp.split(/ /).map(&:to_i)

if m == 1
  puts 0
  exit
end

x.sort!
if n == 1
  puts (x[0] - x[-1]).abs
  exit
end

array = []
array << (x[0] - x[1]).abs
array << (x[-1] - x[-2]).abs
if (m > 2)
  (1..(m - 2)).each do |i|
    ab = [(x[i] - x[i - 1]).abs, (x[i] - x[i + 1]).abs].min
#    puts "i: #{i}, ab:#{ab}"
    array << ab
  end
end
array.sort!
array.shift
(n - 1).times do
  array.pop
end
res = array.inject(0){|sum, enum| sum += enum}
puts res
