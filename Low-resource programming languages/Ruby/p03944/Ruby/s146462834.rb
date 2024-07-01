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
    xb = x
  when 2
    xt = x
  when 3
    yb = y
  when 4
    yt = y
  end
end
s = (xt - xb) * (yt - yb)
if s < 0
  puts 0
else
  puts s
end
