n,k = gets.chomp.split.map(&:to_i)
s_arr = gets.chomp.split('').map(&:to_i)

# 最初の色
first_s = s_arr[0]
# 連続した数字のarray
continuity_number_arr = []
# 比較する色
comp_s = s_arr[0]
count_s = 0

s_arr.each do |s|
	if comp_s != s
		continuity_number_arr << count_s
		comp_s = s
		count_s = 1
		next
	end
	count_s += 1
end
continuity_number_arr << count_s

# 最大値
max_count = 0
# arrから抜く数
i = first_s == 1? k*2+1 : k*2
index = 0
continuity_number_arr.each do |num|
	if index % 2 == 1
		index += 1
		next
	end
	last_index = continuity_number_arr.size < index + i ? continuity_number_arr.size - 1 : index + i -1
	nn = continuity_number_arr[index..last_index].inject(:+)
	max_count = nn if nn > max_count
	index += 1
end

max_count = continuity_number_arr[0] if max_count = 0

puts max_count
