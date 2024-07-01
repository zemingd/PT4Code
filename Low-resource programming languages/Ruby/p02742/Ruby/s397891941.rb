require 'bigdecimal'

a, b = gets.split.map(&:to_i)
a = BigDecimal.new(a)

puts sprintf("%d", (a * b / 2.0).ceil)