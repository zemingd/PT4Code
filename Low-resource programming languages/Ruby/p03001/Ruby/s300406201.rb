w,h,x,y = gets.split.map(&:to_f)
is_split = 1
is_split = 0 if w == y || h == x

# xに引いた場合
area_x_a = ((x - w).abs * h)
area_x_b = ((w - x).abs * h)
# yに引いた場合
area_y_a = w * (y - h).abs
area_y_b = w * (h - y).abs

area_result = [area_x_a,area_x_b,area_y_a,area_y_b].select{|i|
  i != 0
}.min
  

puts "#{area_result} #{is_split}"