# frozen_string_literal: true

w, h, n = gets.split(' ').map!(&:to_i)

arr = []
n.times do
  arr << gets.split(' ').map!(&:to_i)
end

# 座標を配列で表現
ans_x = [0, w]
ans_y = [0, h]

arr.each do |x, y, a|
  case a
  when 1
    ans_x[0] = x if ans_x[0] < x
  when 2
    ans_x[1] = x if ans_x[1] > x
  when 3
    ans_y[0] = y if ans_y[0] < y
  when 4
    ans_y[1] = y if ans_y[1] > y
  end
end

x = ans_x[1] - ans_x[0]
y = ans_y[1] - ans_y[0]

x = 0 if x.negative?
y = 0 if y.negative?

puts x * y
