require "bigdecimal/math"
require "bigdecimal"

io = STDIN
x=io.gets.to_i

a=BigMath::log(BigDecimal(x.to_s), 10)-BigMath::log(BigDecimal('100'), 10)
b=BigMath::log(BigDecimal('1.01'), 10)
n= (a/b).floor
def calc(n)
  (BigDecimal("1.01")**n)*100
end
while calc(n)<x
  n+=1
end
puts n
