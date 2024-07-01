a,b = gets.split.map(&:to_i)
require 'bigdecimal'
puts [a/b, a%b, (BigDecimal(a)/b).round(7).to_s('f')].join(' ')
