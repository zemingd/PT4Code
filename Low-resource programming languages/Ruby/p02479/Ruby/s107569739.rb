r = gets.to_i

area          = r*r*Math::PI
circumference = 2*r*Math::PI
puts "#{area.round(6)} #{circumference.round(6)}"