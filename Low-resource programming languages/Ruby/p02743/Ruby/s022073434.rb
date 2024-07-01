require 'bigdecimal'
A, B, C = gets.split.map(&:to_i)
if BigDecimal(A).sqrt(1000) + BigDecimal(B).sqrt(1000) < BigDecimal(C).sqrt(1000)
  puts 'Yes'
else
  puts 'No'
end