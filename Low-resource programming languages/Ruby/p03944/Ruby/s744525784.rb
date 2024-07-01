w, h, n = gets.split.map(&:to_i)

x1 = 0; y1 = 0
x2 = w; y2 = h

n.times do
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    x1 = x
  when 2
    x2 = x
  when 3
    y1 = y
  else
    y2 = y
  end
end

w = x2 - x1
w = 0 if w < 0
h = (y2 - y1)
h = 0 if h < 0
puts w * h
