num = gets.split.map(&:to_i)
temp = num[0]
count = 0

while temp < num[1] do
	if temp%num[2] == 0
		count += 1
	end
	temp += 1
end

puts count