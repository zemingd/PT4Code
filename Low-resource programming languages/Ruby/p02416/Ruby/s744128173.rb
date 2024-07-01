goukei = []
sum = 0
count = 1

loop do

	number = gets.split("").map(&:to_i)

	for i in 0..number.size - 1
		sum += number[i]
	end

	if sum == 0 then 
		break
	else
 		goukei[count] = sum
 	end

 	count += 1

 	sum =0

end

puts goukei