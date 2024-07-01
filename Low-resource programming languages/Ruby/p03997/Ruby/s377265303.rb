def trapezoid(top_side, bottom_side, height)
  area = (top_side + bottom_side)*height/2
  p area
end

top_side= gets.chomp.to_i
bottom_side = gets.chomp.to_i
height = gets.chomp.to_i
trapezoid(top_side, bottom_side, height)