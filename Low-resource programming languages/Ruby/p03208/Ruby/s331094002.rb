def test
	n, k = gets.split(" ").map(&:to_i)
	h = n.times.map{gets.to_i}.sort

	ans = 10 ** 9 + 1
	(n-k+1).times do |i|
		delta = h[i..(i+k-1)][-1] - h[i..(i+k-1)][0]
		ans = delta if delta < ans
	end
	ans
end

puts test
