require 'bigdecimal'
require 'bigdecimal/util'
a, b, c = gets.split.map(&:to_i)
(BigDecimal(Math.sqrt(a).to_s) + BigDecimal(Math.sqrt(b).to_s) < BigDecimal(Math.sqrt(c).to_s) ? puts("Yes") : puts("No")