input = gets.split(" ").map(&:to_i)
puts "#{input[0]/input[1]} #{input[0]%input[1]} #{input[0]/input[1].to_f}"