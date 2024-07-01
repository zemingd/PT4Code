require 'bigdecimal'
l = STDIN.gets.to_i
n = BigDecimal((l ** 1/3.0).to_s)
puts (n ** 3).to_f
