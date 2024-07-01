# def function(s, q, querys)
# 	string = s
# 	# 最後に反転させるか
# 	is_reverse = false
# 	querys.each do |query|
# 		if query[0...1] == "1"
# 			is_reverse = !is_reverse
# 		elsif query[0...1] == "2"
# 			array = query.split
# 			fi_1 = array[1] == "1"
# 			if (fi_1 && !is_reverse) || (!fi_1 && is_reverse)
# 				string = array[2] << string
# 			elsif (!fi_1 && !is_reverse) || (fi_1 && is_reverse)
# 				string << array[2]
# 			end
# 		end
# 	end
# 	is_reverse ? string.reverse : string
# end
def function(s, q, querys)
	string = [s]
	# 最後に反転させるか
	is_reverse = false
	querys.each do |query|
		if query[0...1] == "1"
			is_reverse = !is_reverse
		elsif query[0...1] == "2"
			array = query.split
			fi_1 = array[1] == "1"
			if (fi_1 && !is_reverse) || (!fi_1 && is_reverse)
				string.unshift(array[2])
			elsif (!fi_1 && !is_reverse) || (fi_1 && is_reverse)
				string.push(array[2])
			end
		end
	end
	is_reverse ? string.reverse!.join : string.join
end

s = gets.chomp
q = gets.chomp.to_i
query = []
(0...q).each do |_|
	query.push(gets.chomp)
end
puts function(s, q, query)
