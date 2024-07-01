w,h,n=gets.split.map(&:to_i)
xya=[]
n.times do
  xya.push gets.split.map(&:to_i)
end
xt = w
yt = h
xb = 0
yb = 0
xya.each do |e|
  x = e[0]
  y = e[1]
  a = e[2]
  case a
  when 1
    xb = [x, xb].max
  when 2
    xt = [x, xt].min
  when 3
    yb = [y, yb].max
  when 4
    yt = [y, yt].min
  end
end
dx = xt - xb
dy = yt - yb
if dx < 0 || dy < 0
  puts 0
else
  puts dx * dy
end
