require 'bigdecimal'
require 'bigdecimal/util'
a, b, c = gets.split.map(&:to_i)
(Math.sqrt(a).to_s.to_d + Math.sqrt(b).to_s.to_d) < Math.sqrt(c).to_s.to_d ? puts("Yes") : puts("No")
# puts Math.sqrt(a).to_s.to_d
