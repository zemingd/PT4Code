a = 3.times.map{gets.split(' ').map(&:to_i)}
n = gets.to_i
b = readlines.map(&:to_i)

flag = 0

#横
3.times.each do |r|
	if b.include?(a[r][0])
		if b.include?(a[r][1])
			if b.include?(a[r][2])
				flag = 1
				break
			end
		end
	end
end

#縦
3.times.each do |c|
	if b.include?(a[0][c])
		if b.include?(a[1][c])
			if b.include?(a[2][c])
				flag = 1
			end
		end
	end
end

if b.include?(a[0][0])
	if b.include?(a[1][1])
		if b.include?(a[2][2])
			flag = 1
		end
	end
end

if b.include?(a[0][2])
	if b.include?(a[1][1])
		if b.include?(a[2][0])
			flag = 1
		end
	end
end

if flag == 1
	puts 'Yes'
else
	puts 'No'
end