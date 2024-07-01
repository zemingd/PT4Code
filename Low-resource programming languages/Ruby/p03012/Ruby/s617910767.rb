n = gets.to_i
L_arr = gets.split.map(&:to_i)
abs_arr = []


(1..(n-1)).to_a.each do |i|
  left_arr = L_arr[0..i].sum
  right_arr = L_arr[i..n].sum
  abs_arr << (left_arr - right_arr).abs
end

p abs_arr.min
