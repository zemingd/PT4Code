a, b, c = gets.chomp.split
if BigDecimal(a).sqrt(1000) + BigDecimal(b).sqrt(1000) < BigDecimal(c).sqrt(1000)
  puts 'Yes'
else
  puts 'No'
end
