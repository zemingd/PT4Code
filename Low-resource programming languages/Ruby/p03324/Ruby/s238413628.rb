x = gets.split.map(&:to_i)
a = x[1]
for i in 0...10
	if(a % (100 ** x[0]) == 0)then
		puts a
		break
	end
	a = a * 10 
end