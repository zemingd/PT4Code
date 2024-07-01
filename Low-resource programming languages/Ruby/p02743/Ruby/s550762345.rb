require 'bigdecimal'

a,b,c = gets.split
puts (BigDecimal(a) + BigDecimal(b)).sqrt(10) < Math.sqrt(c.to_i)
