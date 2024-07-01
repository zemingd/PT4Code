# encoding: UTF-8
x = Array.new
2.times do
  x += gets.chomp.split
end
big_h, big_w, h, w = x[0].to_i, x[1].to_i, x[2].to_i, x[3].to_i
puts "#{ (big_h - h) * (big_w - w)}"