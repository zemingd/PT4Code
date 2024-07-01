input = gets.chomp.split(' ')
square = input[0].to_i * input[1].to_i
length = input[0].to_i * 2 + input[1].to_i * 2
p "#{square} #{length}"