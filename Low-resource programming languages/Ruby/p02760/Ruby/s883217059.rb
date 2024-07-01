arr = []
key = 0
3.times do |i|
	arr[i] = gets.split.map(&:to_i)
end

num = gets.to_i

num.times do |g|
	tmp = gets.to_i
	3.times do |i|
		num.times do |j|
			if tmp == arr[i][j]
				arr[i][j] = 0
			end
		end
	end
end

3.times do |i|
	if arr[i][0] == arr[i][1] && arr[i][1] ==  arr[i][2]
		key = 1
	end
end

3.times do |i|
	if arr[0][i] == arr[1][i] && arr[1][i] ==  arr[2][i]
		key = 1
	end
end

if arr[0][0] == arr[1][1] && arr[1][1] ==  arr[2][2]
	key = 1
elsif arr[0][2] == arr[1][1] && arr[1][1] ==  arr[2][0]
	key = 1
end
if key == 1
	puts "Yes"
else
	puts "No"
end