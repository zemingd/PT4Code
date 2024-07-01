require 'bigdecimal'
a, b, c = gets.chomp.split.map(&:to_i)
if (( BigDecimal.new(a.to_s,300).sqrt(300) +  BigDecimal.new(b.to_s,300).sqrt(300)) <  BigDecimal.new(c.to_s,300).sqrt(300))
  puts "Yes"
else
  puts "No"
end
