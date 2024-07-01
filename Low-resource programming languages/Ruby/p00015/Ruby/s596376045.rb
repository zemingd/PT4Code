def writeSum
	number1 = gets.to_i
	number2 = gets.to_i
	puts number1 + number2	
end

dataSet = gets.to_i
1.upto(dataSet) do |i|
	writeSum()
end