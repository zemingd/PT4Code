require 'bigdecimal'
require 'bigdecimal/util'
a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

if v - w <= 0
  puts "NO"
  return
end

x = (a - b) / (w - v).to_d
if x <= t.to_d
  puts "YES"
else
  puts "NO"
end
