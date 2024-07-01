X, N = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
exist = []
ans = 0
sa = Float::INFINITY
101.times do |i|
	exist << i
end

N.times do |i|
	exist.delete(arr[i])
end

(exist.length).times do |i|
	tmp = (exist[i]-X).abs
	if sa > tmp
		sa = tmp
		ans = exist[i]
	end
end

p ans