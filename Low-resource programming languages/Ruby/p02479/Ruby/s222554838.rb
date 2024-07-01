r = gets.chomp.to_f
s = Math::PI * r ** 2
l = 2 * Math::PI * r
puts sprintf("%.6f %.6f", s, l)