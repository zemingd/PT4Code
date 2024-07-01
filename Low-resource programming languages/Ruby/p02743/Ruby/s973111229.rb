a, b, c = gets.split.map(&:to_i)

require "bigdecimal/math"
require "bigdecimal"

print BigMath::sqrt(BigDecimal.new(a), 10) + BigMath::sqrt(BigDecimal.new(b), 10) < BigMath::sqrt(BigDecimal(c), 10) ? "Yes" : "No"