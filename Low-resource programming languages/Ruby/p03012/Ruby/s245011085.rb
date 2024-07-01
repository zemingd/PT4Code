n = gets.chomp.to_i
w_arr = gets.chomp.split(" ").map(&:to_i)

s1 = 0
s2 = w_arr.sum
min_abs = (s1 - s2).abs

w_arr.each do |w|
  s1 += w
  s2 -= w
  tmp_abs = (s1 - s2).abs
  min_abs = tmp_abs if tmp_abs < min_abs
end

puts min_abs
