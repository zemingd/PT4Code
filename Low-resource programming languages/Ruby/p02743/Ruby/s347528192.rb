require 'bigdecimal'
a, b, c = gets.split.map(&:to_s)
Math.sqrt(BigDecimal(a)) + Math.sqrt(BigDecimal(b)) < Math.sqrt(BigDecimal(c)) ? puts("Yes") : puts("No")