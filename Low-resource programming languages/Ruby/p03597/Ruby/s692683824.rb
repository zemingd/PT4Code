num_array = []
while line = gets
  num_array << line.to_i
end

def black_count( side_line, white )
 side_line*side_line - white
end

puts black_count(num_array[0],num_array[1])