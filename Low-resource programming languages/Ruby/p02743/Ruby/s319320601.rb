require "bigdecimal/math"
a,b,c=gets.split.map(&:to_i)
d= BigMath::sqrt(BigDecimal(a),18)
e= BigMath::sqrt(BigDecimal(b),18)
f= BigMath::sqrt(BigDecimal(c),18)
puts d+e<f ? "Yes" : "No"
