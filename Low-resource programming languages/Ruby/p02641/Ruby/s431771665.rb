x, n = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

c_set = (1..100).to_a - ary

le_num = c_set.find{|i| i <= x}
ge_num = c_set.find{|i| i >= x}

diff1 = x - le_num
diff2 = ge_num - x

ans = diff2 >= diff1 ? le_num : ge_num
puts ans