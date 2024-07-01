input = gets.chomp.split(" ")
x = input[0]
y = input[1]
z = input[2]
x, y = y, x
x ,z = z ,x
puts "#{x} #{y} #{z}"