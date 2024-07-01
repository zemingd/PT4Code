def s()
  gets()
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end

require 'bigdecimal'
require 'bigdecimal/util'

x, y = li()

require "bigdecimal"
require "bigdecimal/math"


x = BigDecimal(x.to_s)
y = BigDecimal(y.to_s)

puts (BigMath.log(y/x, 25)/BigMath.log(2, 25)).floor + 1
