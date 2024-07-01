require 'bigdecimal'
require 'bigdecimal/util'

a, b, c = gets.split.map(&:to_d)
if (a.sqrt(300)) + (b.sqrt(300)) < (c.sqrt(300))
  puts "Yes"
else
  puts "No"
end
