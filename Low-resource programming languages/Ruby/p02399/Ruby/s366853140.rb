require 'bigdecimal'
a, b = gets.chomp.split(' ').map(&:to_i)
d = a / b
r = a % b
f = BigDecimal(a.to_s) / 2
printf("%d %d %.5f\n", d, r, f)
