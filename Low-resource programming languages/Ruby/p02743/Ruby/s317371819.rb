require 'bigdecimal'

a, b, c = gets.chomp.split
if BigDecimal(a) ** 0.5 + BigDecimal(b) ** 0.5 < BigDecimal(c) ** 0.5
  puts 'Yes'
else
  puts 'No'
end