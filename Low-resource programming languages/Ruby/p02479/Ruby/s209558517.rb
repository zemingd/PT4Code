r = gets.chomp.to_f
area = Math::PI * r ** 2
round = 2 * Math::PI * r
puts "#{area} #{round}"