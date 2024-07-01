require 'bigdecimal'

a, b = gets.split.map(&:to_i)
a = BigDecimal.new(a)


puts (a * b / 2.0).round