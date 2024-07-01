w,h,n = gets.split.map(&:to_i)
xs,xe = 0,w
ys,ye = 0,h

n.times do
  x,y,a = gets.split.map(&:to_i)
  case a
  when 1
    xs = [xs, x].max
  when 2
    xe = [xe, x].min
  when 3
    ys = [ys, y].max
  when 4
    ye = [ye, y].min
  end
end

puts [xe-xs, 0].max * [ye-ys, 0].max