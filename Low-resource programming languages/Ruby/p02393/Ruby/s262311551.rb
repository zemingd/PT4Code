input = gets.split
input[0] = input[0].to_i
input[1] = input[1].to_i
input[2] = input[2].to_i

input = input.sort
puts "#{input[0]} #{input[1]} #{input[2]}"
