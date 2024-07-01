require 'pp'

def gets_HW_int
  h, w, n= gets.split.map(&:to_i)
  board = n.times.map { gets.split.map(&:to_i) }
  return h, w, n, board
end
W, H, N, xya_list = gets_HW_int

xs = [0, W]
ys = [0, H]

xya_list.each do |x, y, a|
  if a == 1
    xs[0] = [xs[0], x].max
  elsif a == 2
    xs[1] = [xs[1], x].min
  elsif a == 3
    ys[0] = [ys[0], y].max
  elsif a == 4
    ys[1] = [ys[1], y].min
  end
end

# ans = (x_max.min - x_min.max) * (y_max.min - y_min.max)
# puts ans >= 0 ? ans : 0

puts [xs[1] - xs[0], 0].max * [ys[1] - ys[0], 0].max