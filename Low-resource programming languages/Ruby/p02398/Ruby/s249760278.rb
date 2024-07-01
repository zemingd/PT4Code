num = gets.split.map(&:to_i)
temp = num[0]
count = 0

for temp in num[0]..num[1]
	if temp%num[2] == 0
		count++
	end
	temp++
end

puts count