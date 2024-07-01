def breakBridge(a, l, r, max)
	(l + 1).upto(r - 1) do |i|
		if a[i] < max
			breakBridge(a, i, (a[i] > r) ? r : a[i], max)
			break
		end
	end
	a[l] = max
end

n, m = gets.chomp.split(' ').map{|i| i.to_i}
a = Array.new(n + 1, n + 1)
cnt = 0
m.times do |i|
	idx, b = gets.chomp.split(' ').map{|j| j.to_i}
	a[idx] = (a[idx] > b) ? b : a[idx]
end
1.upto(n) do |i|
	if a[i] <= n
		breakBridge(a, i, a[i], n + 1)
		cnt += 1
	end
end
puts cnt