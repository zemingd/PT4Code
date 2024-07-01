i = 1

num = gets.chomp.split(' ').map{|s| s.to_i}


num.map do |x|
	if x != 0
		puts 'Case ' + i.to_s + ':' + x.to_s
	else
		break
	end	

 i += 1
end