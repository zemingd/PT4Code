n = gets.chomp.to_i
s = gets.chomp.chars

num = 0
tmp_color = ''
s.each do |color|
  next if tmp_color == color
  num += 1
  tmp_color = color
end

puts num