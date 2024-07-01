while num = gets.split.map(&:to_i)
	break if num == [0,0]
	num = num.sort
	puts "#{num[0]} #{num[1]}"
end