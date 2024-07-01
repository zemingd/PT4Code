# frozen_string_literal: true

w, h, n = gets.split(' ').map!(&:to_i)

arr = []
n.times do
  arr << gets.split(' ').map!(&:to_i)
end

# 座標を配列で表現
ans_x = [0, w]
ans_y = [0, h]

arr.each do |x, y, n|
  case n
  when 1 then ans_x[0] = x
  when 2 then ans_x[1] = x
  when 3 then ans_y[0] = y
  when 4 then ans_y[1] = y
  end
end

x = ans_x[1] - ans_x[0]
y = ans_y[1] - ans_y[0]

x = 0 if x < 0
y = 0 if y < 0

puts x * y
