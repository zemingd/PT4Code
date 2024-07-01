n = gets.to_i
a_arr = gets.chomp.split.map(&:to_i)

min_n = 1_000_000_000
arr_sum = 0
minus_num_count = 0

n.times do |i|
	minus_num_count += 1 if a_arr[i].negative?
	if min_n > a_arr[i].abs
		min_n = a_arr[i].abs
	end
	arr_sum += a_arr[i].abs
end

if minus_num_count % 2 == 0
	puts arr_sum
else
	puts arr_sum - (min_n * 2)
end
