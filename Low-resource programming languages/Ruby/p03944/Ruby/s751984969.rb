w, h, n = gets.split.map(&:to_i)
l = 0
r = w
b = 0
t = h
for i in 0...n do
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    l = x if l < x
  when 2
    r = x if r > x
  when 3
    b = y if b < y
  when 4
    t = y if t > y
  end
end
ww = (l < r) ? (r - l) : 0
hh = (b < t) ? (t - b) : 0
puts ww * hh
