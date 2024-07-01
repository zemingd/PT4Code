a = gets.chomp
b = gets.chomp

area = a.to_i * b.to_i
circumference = 2 * (a.to_i + b.to_i)

puts "#{area} #{circumference}"