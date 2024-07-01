require 'bigdecimal'
r = BigDecimal::new(gets)
s = (r * r * Math::PI).floor(6).to_f
l = (2 * r * Math::PI).floor(6).to_f
puts "#{s} #{l}"