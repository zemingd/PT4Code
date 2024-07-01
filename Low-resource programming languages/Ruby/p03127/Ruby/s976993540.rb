gets
number=gets.chomp.split(" ").map(&:to_i)
number.sort!
answer=0
(number.size-1).times do|i|
	if(number[1]%number[0]==0)
		number[1]=number[0]
	end
	print(number)
	if(number.size !=2||number[1]%number[0]==0)
		number.shift()
		answer=number[0]
	else
		answer=1
	end
end
print(answer)