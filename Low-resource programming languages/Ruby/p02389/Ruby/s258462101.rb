array = gets.chomp.split
area = array[0].to_i * array[1].to_i
circumference = 2*(array[0].to_i + array[1].to_i)

puts "#{area} #{circumference}"