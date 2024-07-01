require 'bigdecimal'
require 'bigdecimal/util'
a,b,c = gets.chomp.split.map(&:to_d)
n = 25
if (a.sqrt(n) + b.sqrt(n)) < c.sqrt(n)
  puts "Yes"
else
  puts "No"
end