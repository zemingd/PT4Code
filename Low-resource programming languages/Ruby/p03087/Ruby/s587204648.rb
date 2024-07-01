n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp

q.times do
	str_s,str_e = gets.chomp.split.map{|i| i.to_i - 1}
	# puts s[str_s..str_e]
	str_len = s[str_s..str_e].size
	temp = 0
	(str_len - 1).times do |n|
		if s[str_s + n..str_s + n + 1] == "AC"
			temp += 1
		end
	end

	puts temp
end