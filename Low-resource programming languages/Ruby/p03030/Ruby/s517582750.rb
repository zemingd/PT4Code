input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  cc << s
  cc.sort
end

