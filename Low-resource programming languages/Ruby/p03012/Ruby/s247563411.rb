n = gets.to_i
L_arr = gets.split.map(&:to_i)
abs_arr = []

(1..(n-1)).to_a.each do |i|
  abs_arr << (L_arr.slice(0,i).sum - L_arr.slice(i,n).sum).abs
end

p abs_arr.min
