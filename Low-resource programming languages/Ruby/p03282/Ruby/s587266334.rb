s = gets.chomp
k = gets.chomp.to_i
cnt = 0
tyou = 5000 * 10 ** 12

s.chars.each do |c|
	ngo = c.to_i
	cnt += ngo ** tyou 
	if cnt >= k 
		puts ngo 
		exit 
	end
end




