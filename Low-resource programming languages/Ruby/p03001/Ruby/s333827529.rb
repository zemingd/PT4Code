w, h, x, y = gets.chomp.split(" ").map(&:to_f)
as = []
# x = k
if x < w / 2
  as << h * x
else
  as << h * (w - x)
end
# y = k
if y < h / 2
  as << w * y
else
  as << w * (h - y)
end

# (0,0)
if y != 0 && x != 0
  b = 0
  a = y / x
  if a * w > h
    as << y / a * h / 2
  else
    as << a * w * w / 2
  end
end
# (0, h)
if y != h && x != 0
  b = h
  a = (y - b) / x
  if -b / a > w
    as << (h - (a * w + b)) * w / 2
  else
    as << -b / a * h / 2
  end
end
# (w, 0)
if y != 0 && x != w
  a = y / (x - w)
  b = -a * w
  if b > h
    as << (w - ((h - b) / a)) * h / 2
  else
    as << w * b / 2
  end
end
# (w, h)
if y != h && x != w
  a = (y - h) / (x - w)
  b = y - (a * x)
  if b < 0
    as << (w - (-b / a)) * h / 2
  else
    as << (h - b) * w / 2
  end
end
a_max = as.max
puts a_max

if (x == w / 2 && y == h / 2) ||
  as.count {|v| v == a_max} > 1
  puts 1
else
  puts 0
end
