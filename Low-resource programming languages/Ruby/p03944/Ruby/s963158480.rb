W, H, N = gets.split.map(&:to_i)
x0, x1, y0, y1 = 0, W, 0, H
N.times do
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    x0 = x if x0 < x
  when 2
    x1 = x if x1 > x
  when 3
    y0 = y if y0 < y
  when 4
    y1 = y if y1 > y
  end
end

w = [x1-x0, 0].max
h = [y1-y0, 0].max

puts w*h