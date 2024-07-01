require 'pp'

def gets_HW_int
  h, w, n= gets.split.map(&:to_i)
  board = n.times.map { gets.split.map(&:to_i) }
  return h, w, n, board
end
W, H, N, xya_list = gets_HW_int

x_min, x_max = [0], [W]
y_min, y_max = [0], [H]
xya_list.each do |x, y, a|
  if a == 1
    x_min.push(x)
  elsif a == 2
    x_max.push(x)
  elsif a == 3
    y_min.push(y)
  elsif a == 4
    y_max.push(y)
  end
end

ans = (x_max.min - x_min.max) * (y_max.min - y_min.max)
puts ans >= 0 ? ans : 0