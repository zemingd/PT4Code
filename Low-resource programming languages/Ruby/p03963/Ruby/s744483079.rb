line_array=gets.split(" ")
puts line_array[1].to_i * ((line_array[1].to_i - 1) ** (line_array[0].to_i-1))