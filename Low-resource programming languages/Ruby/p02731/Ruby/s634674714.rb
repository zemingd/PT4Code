input = gets.to_i

cube_line = input / 3.to_f
v_line, h_line = [cube_line, cube_line]
height = input - (v_line + h_line)

puts v_line * h_line * height
