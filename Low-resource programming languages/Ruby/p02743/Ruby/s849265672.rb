require 'bigdecimal'

input = gets.split.map(&:to_i)
a, b ,c = input[0].to_i, input[1].to_i, input[2].to_i

_a = BigDecimal.new(a,200).sqrt(100).to_s("F")
_b = BigDecimal.new(b,200).sqrt(100).to_s("F")
_c = BigDecimal.new(c,200).sqrt(100).to_s("F")

puts _a.to_f + _b.to_f < _c.to_f ? 'Yes' : 'No'