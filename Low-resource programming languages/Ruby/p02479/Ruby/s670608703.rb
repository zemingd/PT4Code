include Math

r = gets.to_f

area          = PI * r**2
circumference = 2*PI*r
puts "#{area.round(6)} #{circumference.round(6)}"