num = gets.to_i
numbers = gets
number = numbers.split(" ")
for i in 0..num - 1 do 
	print number[num - (i + 1)] , " "
end