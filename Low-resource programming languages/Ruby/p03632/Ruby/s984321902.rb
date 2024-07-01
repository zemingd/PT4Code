a, b, c, d = gets.split.map(&:to_i)
count = 0

for num1 in a..b
	for num2 in c..d
		if num1 == num2 then
			count = count +1			
		end
	end
end

puts count-1