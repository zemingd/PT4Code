instr = gets.split(" ")
num_a = instr[0].to_i
num_b = instr[1].to_i

area = num_a * num_b
length = (num_a * 2) + (num_b * 2)

puts "#{area} #{length}"
