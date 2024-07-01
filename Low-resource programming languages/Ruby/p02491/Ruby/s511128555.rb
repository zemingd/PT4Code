input = gets.split(" ")
array = input.sort
a = array[0].to_i
b = array[1].to_i
puts "#{b / a} #{b % a} #{b / a.to_f}"