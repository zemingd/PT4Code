numbers = gets.split.map!{|item| item.to_i}

if numbers[0] < numbers[1] && numbers[1] < numbers[2] then
	print "Yes\n"
	
else 
	print "No\n"
end