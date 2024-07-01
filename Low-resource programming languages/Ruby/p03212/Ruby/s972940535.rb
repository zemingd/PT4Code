n = gets.chomp.to_i

numbers_753 = Array.new()
num = 1
while true
	num_s = num.to_s(4)
	ok_7 = false
	ok_5 = false
	ok_3 = false
	ok = true
	for i in 0..num_s.length-1
		if num_s[i] == '3'
			ok_7 = true
			num_s[i] = '7'
		elsif num_s[i] == '2'
			ok_5 = true
			num_s[i] = '5'
		elsif num_s[i] == '1'
			ok_3 = true
			num_s[i] = '3'
		else
			ok = false
			break
		end
	end
	if ok && ok_7 && ok_5 && ok_3
		numbers_753.push(num_s)
	end
	num += 1
	if num_s.to_i > n
		break
	end
end

puts numbers_753.length.to_s