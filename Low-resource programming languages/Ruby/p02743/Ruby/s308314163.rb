require 'bigdecimal'
require 'bigdecimal/util'

a, b, c = gets.split.map(&:to_d)
if a + b - c + 2 * (a * b).sqrt(200) < 0
  puts "Yes"
else
  puts "No"
end
