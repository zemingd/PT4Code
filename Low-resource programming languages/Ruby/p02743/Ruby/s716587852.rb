require 'bigdecimal'

a, b, c = gets.split.map(&:to_i)
a = BigDecimal.new(a)
b = BigDecimal.new(b)
c = BigDecimal.new(c)
if (a ** 0.5) + (b ** 0.5) < (c ** 0.5)
  puts "Yes"
else
  puts "No"
end