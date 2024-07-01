require "bigdecimal"
require "bigdecimal/math"

include BigMath

a, b, c = gets.chomp.split
aa = BigDecimal(a)
bb = BigDecimal(b)
cc = BigDecimal(c)
if aa.sqrt(1000) + bb.sqrt(1000) < cc.sqrt(1000)
  puts "Yes"
else
  puts "No"
end