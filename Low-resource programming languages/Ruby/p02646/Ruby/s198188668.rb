require 'bigdecimal'
require 'bigdecimal/util'
a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v - w <= 0 || a == b
  puts "NO"
  return
end

if ((a - b).abs / (w - v).to_d) <= t
  puts "YES"
else
  puts "NO"
end
