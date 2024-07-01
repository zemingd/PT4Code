require 'pp'

def gets_HW_int
  h, w, n= gets.split.map(&:to_i)
  board = n.times.map { gets.split.map(&:to_i) }
  return h, w, n, board
end
W, H, N, xya_list = gets_HW_int

a1 = xya_list.select{|x, y, a| a == 1}
a2 = xya_list.select{|x, y, a| a == 2}
a3 = xya_list.select{|x, y, a| a == 3}
a4 = xya_list.select{|x, y, a| a == 4}

a1_x = a1.empty? ? 0 : a1.transpose[0].max
a2_x = a2.empty? ? W : a2.transpose[0].min
a3_y = a3.empty? ? 0 : a3.transpose[1].max
a4_y = a4.empty? ? H : a4.transpose[1].min

puts [a2_x - a1_x, 0].max * [a4_y - a3_y, 0].max
