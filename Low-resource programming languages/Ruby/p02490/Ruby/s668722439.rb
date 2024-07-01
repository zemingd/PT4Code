while true
	str = gets.split.map(&:to_i)
	break if str == [0,0]
	puts str.sort*" "
end