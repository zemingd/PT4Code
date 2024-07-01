a, b, c = gets.split.map(&:to_i)

require "bigdecimal"

print BigDecimal.new(a).sqrt + BigDecimal.new(b).sqrt < BigDecimal(c).sqrt ? "Yes" : "No"