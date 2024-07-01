N, Q = gets.split(' ').map(&:to_i)
tree = Array.new(N + 1){Array.new}

(N - 1).times do
	a, b = gets.split(' ').map(&:to_i)
	tree[a].push(b)
	tree[b].push(a)
end

counter = [0] * (N + 1)
Q.times do
	po, x = gets.split(' ').map(&:to_i)
	counter[po] += x
end

queue = [[0, 1]]
checker = [false] * (N + 1)
ans = [0] * (N + 1)
while !queue.empty?
	pre, now = queue.shift
	checker[now] = true
	if pre == 0
		ans[now] = counter[now]
	else
		ans[now] = ans[pre] + counter[now]
	end
	tree[now].each do |i|
		if checker[i] == false
			queue.push([now, i])
		end
	end
end

puts ans[1..N].join(' ')