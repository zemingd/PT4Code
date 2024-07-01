a, b, c = gets.chomp.split.map(&:to_i)

require 'bigdecimal'
a = BigDecimal(a)
b = BigDecimal(b)
c = BigDecimal(c)

if Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c)
  puts 'Yes'
else
  puts 'No'
end
