num = gets.split.map(&:to_i)
count = 0

while temp <= num[1] do
	if num[2]%num[0] == 0
		count += 1
	end
	num[0] += 1
end

puts count