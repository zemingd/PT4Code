def writeSum
	number1 = gets.to_i
	number2 = gets.to_i
	sum = number1 + number2
	if sum >= 10 ** 80
		puts "overflow"
	else
		puts sum
	end
end

dataSet = gets.to_i
1.upto(dataSet) do |i|
	writeSum()
end