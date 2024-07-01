w,h,x,y = gets.split.map(&:to_f)
is_split = 1
is_split = 0 if w == x || h == y || w == y || h == x
# xの場合
x_ = (x > w ? (x - w) : (w - x))
area_x = h * x_
# yの場合
y_ = (y > h ? (y - h) : (h - y))
area_y =  y_ * w
puts "#{(area_x > area_y ? area_x : area_y).to_f} #{is_split}"