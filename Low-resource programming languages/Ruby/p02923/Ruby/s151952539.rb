N = gets.to_i
H = gets.split(' ').map(&:to_i)
count = 0
step = 0

(N - 1).times do |idx|
	if H[idx] >= H[idx + 1]
		step += 1
	else
		step = 0
	end
	count = step if step > count
end
p count