n, m, c = gets.chomp.split.map(&:to_i)
brr = gets.chomp.split.map(&:to_i)
cnt = 0
n.times do |i|
	arr = gets.chomp.split.map(&:to_i)
	sum = 0
	m.times do |j|
		sum += arr[j] * brr[j]
	end
	cnt += 1 if sum + c > 0
end
puts cnt


