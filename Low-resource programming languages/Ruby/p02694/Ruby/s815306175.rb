x = gets.to_i
depo = 100
count = 0

while(true)
	if(depo < x)
	depo = (depo * 1.01).floor
	count += 1
else
	break
	end
end

puts count