w, h, n = gets.chomp.split.map(&:to_i)
x_min = y_min = 0
x_max = w
y_max = h

while ln = gets
  x, y, a = ln.chomp.split.map(&:to_i)
  if a == 1
    x_min = x
  elsif a == 2
    x_max = x
  elsif a == 3
    y_min = y
  else
    y_max = y
  end
end
puts (x_max - x_min) * (y_max - y_min)