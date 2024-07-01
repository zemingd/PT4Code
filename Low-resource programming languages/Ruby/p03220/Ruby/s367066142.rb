n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
k = 100000000
ans = 0

n.times do |i|
	if k > (a - (t - h[i] * 0.006)).abs
		k = (a - (t - h[i] * 0.006)).abs
		ans = i + 1
	end
end

puts ans