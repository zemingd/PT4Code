w,h,x,y = gets.split.map(&:to_i)
is_split = 1
is_split = 0 if w == x || h == y
# xの場合
x_ = (x > w ? (x - w) : (w - x))
area = h * x_
# yの場合
y_ = (y > h ? (y - h) : (h - y))
area =  y_ * w
puts "#{area.to_f} #{is_split}"