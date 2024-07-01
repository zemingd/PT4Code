w, h, n = gets.split.map(&:to_i)
x1, y1, x2, y2 = 0, 0, w, h
n.times do
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    x1 = [x1, x].max
  when 2
    x2 = [x2, x].min
  when 3
    y1 = [y1, y].max
  when 4
    y2 = [y2, y].min
  end
end
if x2 - x1 >= 0 && y2 - y1 >= 0
  puts (x1 - x2) * (y1 - y2)
else
  puts 0
end
