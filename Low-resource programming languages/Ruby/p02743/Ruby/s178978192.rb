require "bigdecimal"
a,b,c = gets.split.map{|s|BigDecimal.new(s).sqrt(100)}
puts a + b < c ? "Yes" : "No"
