n,k = gets.chomp.split.map(&:to_i)
s_arr = gets.chomp.split('').map(&:to_i)

# 色が変わるときのindexをとる。最後はmaxのindexにプラス1したものを取得する。
change_arr = []
change_arr << 0

# 比較する色
comp_s = s_arr[0]
count_s = 0

# 1010…という配列にしたいので、最初が0始まりの時は、change_arrに1の数=0を入れる
if comp_s == 0
	change_arr << 0
end

s_arr.each_with_index do |s, i|
	if comp_s != s
		change_arr << i
		comp_s = s
		count_s = 1
		next
	end
	count_s += 1
end
change_arr << s_arr.size

# 最大の数
max_count = 0

change_arr.each_with_index do |cnt, i|
	next if i%2==1

	left_i = i
	right_i = left_i + (k+1)*2 - 1
	last_index = right_i >= change_arr.size ? change_arr.size-1 : right_i
	now_count = change_arr[last_index] - change_arr[left_i]
	max_count = now_count if now_count > max_count
end

puts max_count
