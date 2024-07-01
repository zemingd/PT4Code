number=gets.chomp.split(" ").map(&:to_i)
if(number[1]%number[0]==0)
	print(number[0]+number[1])
else
	print(number[1]-number[0])
end
