w,h,n = gets.split.map(&:to_i)
xl = 0
xr = w
yl = 0
yh = h
n.times do
  x,y,a = gets.split.map(&:to_i)
  if a == 1
    xl = x if x >= xl
  elsif a == 2
    xr = x if x <= xr
  elsif a == 3
    yl = y if y > yl
  else
    yh = y if y < yh
  end
end
ans = (yh-yl) * (xr - xl)
puts ans >= 0 ? ans : 0