x, n = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

c_set = (0..101).to_a - ary

ge_num = c_set.find{|i| i >= x}
ge_num_idx = c_set.index{|i| i >= x}
le_num = c_set[0..ge_num_idx].reverse.find{|i| i <= x}

diff1 = x - le_num
diff2 = ge_num - x

ans = diff2 >= diff1 ? le_num : ge_num
puts ans

