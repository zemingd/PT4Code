n = gets.to_i
t, a = gets.split.map { |i| i.to_i }
h = gets.split.map { |i| i.to_i }

min_x = 100000
ans = -1
n.times do |i|
	if (a - (t - h[i] * 0.006)).abs < min_x
		min_x = [(a - (t - h[i] * 0.006)).abs, min_x].min
		ans = i
	end
end

p ans+1
