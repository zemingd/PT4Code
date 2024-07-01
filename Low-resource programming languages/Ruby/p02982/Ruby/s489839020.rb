n, d = gets.chomp.split.map(&:to_i)
arr = Array.new(n)

n.times do |i|
	arr[i] = gets.chomp.split.map(&:to_i)
end

lut = Array.new(1000)
(1..1000).each do |i|
	lut[i-1] = i ** 2
end

cnt = 0
(n-1).times do |i|
	(i+1..n-1).each do |j|
		sum = 0
		d.times do |k|
			sum += (arr[i][k] - arr[j][k]) ** 2
		end
		cnt += 1 if lut.index(sum) != nil 
	end
end
puts cnt