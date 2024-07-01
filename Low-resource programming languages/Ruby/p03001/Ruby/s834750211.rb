w,h,x,y = gets.split.map(&:to_i)

count = 0
size = 0
if x.zero? and y.zero?
  count = 1
elsif x.zero?
  if (h-y) > y
    size = y*w
  else
    size = (h-y)*w
  end
elsif y.zero?
  if (w-x) > x
    size = x*h
  else
    size = (w-x)*h
  end
else
  if w*(h-y) > w*y
    ydayo = w*y
  else
    ydayo = w*(h-y)
  end

  if h*(w-x) > h*x
    xdayo = h*x
  else
    xdayo = h*(w-x)
  end

  size = xdayo > ydayo ? xdayo : ydayo
  count = xdayo != ydayo ? 0 : 1
end

print size
puts " " + count.to_s
