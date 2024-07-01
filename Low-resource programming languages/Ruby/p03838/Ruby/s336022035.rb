# https://atcoder.jp/contests/agc008/tasks/agc008_a



x, y = gets.split.map(&:to_i)

button_a = (x.abs - y.abs).abs

button_b = if x < y
             if x * y >= 0
               0
             else
               1
             end
           else
             if x * y == 0
               1
             elsif x * y > 0
               2
             else
               1
             end
           end

puts button_a + button_b
