w,h,n = gets.chomp.split.map(&:to_i)
xs,ys,as = n.times.map{gets.chomp.split.map(&:to_i)}.transpose

x_l = y_d = 0
x_r = w
y_u = h
as.each_with_index do |a,i|
  case a
  when 1
    x_l = xs[i] if xs[i] > x_l
  when 2
    x_r = xs[i] if xs[i] < x_r
  when 3
    y_d = ys[i] if ys[i] > y_d
  when 4
    y_u = ys[i] if ys[i] < y_u
  end
end

if x_r - x_l < 0
  w = 0
else
  w = w - (w - x_r) - x_l
end

if y_u - y_d < 0
  h = 0
else
  h = h - (h - y_u) - y_d
end
puts w * h
