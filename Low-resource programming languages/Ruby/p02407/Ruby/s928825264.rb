def reverseNumber(arr)
	rev_arr = arr.reverse
	rev_str = ''
	rev_arr.each{|num|
		rev_str += num + " "
	}
	return rev_str.gsub(/^[ \s]*(.*?)[ \s]*$/, '\1')
end

num = gets.to_i
arr_num = gets.chomp
arr_nums = arr_num.split(' ').map(&:to_s)

puts reverseNumber(arr_nums)