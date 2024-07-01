a, b = gets.split(" ")

sorted_input = [(a * b.to_i), (b * a.to_i)].sort
puts sorted_input.first