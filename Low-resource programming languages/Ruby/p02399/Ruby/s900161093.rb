input = gets.split(" ").map{|i| i.to_i}
puts ("#{input[0]/input[1]} #{input[0]%input[1]} #{input[0].to_f/input[1]}")