a,b,c = gets.chomp.split(" ")
a=a.to_i
b=b.to_i
c=c.to_i
numbers = [a, b, c]
numbers.sort!
for i in 0..2 do
	print numbers[i]
	if i!=2 then
		print " "
	end
	
end