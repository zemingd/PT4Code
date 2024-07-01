array = gets.split("\s")
a = array[0].to_i
b = array[1].to_i

area = a * b
line = (a+b) *2
puts area.to_s + "\s" + line.to_s + "\n"