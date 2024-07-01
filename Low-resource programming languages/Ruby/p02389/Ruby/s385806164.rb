input = gets
array = input.split(" ")
area = array[0].to_i * array[1].to_i 
circum = 2 * (array[0].to_i + array[1].to_i)
puts "#{area} #{circum}"
