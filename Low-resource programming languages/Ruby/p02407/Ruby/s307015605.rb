count = gets.to_i 
numbers = gets.split(" ").reverse
count.times do |i|
	print numbers[i]
	if i == count-1 then
		break
	end
	print " "
end