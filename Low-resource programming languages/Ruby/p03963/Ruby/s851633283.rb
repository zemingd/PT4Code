line_array=gets.split.map(&:to_i)
puts line_array[1] * ((line_array[1] - 1) ** (line_array[0] - 1))