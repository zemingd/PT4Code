require 'BigDecimal'
a, b, c = gets.split.map(&:to_i)
if BigDecimal(a)**0.5 + BigDecimal(b)**0.5 < BigDecimal(c)**0.5
	puts "Yes"
else
	puts "No"
end
