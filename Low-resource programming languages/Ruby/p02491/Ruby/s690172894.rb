require 'bigdecimal'
$/ = " "
a = gets.to_i
b = gets.to_i
d = a / b
f = a % b
r = (BigDecimal::new(a) / BigDecimal::new(b)).floor(6).to_f
puts "#{d} #{f} #{r}"