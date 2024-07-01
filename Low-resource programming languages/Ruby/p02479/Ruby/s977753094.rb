r = gets.to_f
area = sprintf("%.6f", r * r * Math::PI)
length = sprintf("%.6f", r * 2 * Math::PI)
puts "#{area} #{length}"