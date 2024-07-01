def test
	n, k = gets.split(" ").map(&:to_i)
	h = n.times.map{gets.to_i}.sort

	ans = 1000000
	(n-k+1).times do |i|
		delta = h[i..(i+k-1)].max - h[i..(i+k-1)].min
		ans = delta if delta < ans
	end
	ans
end

puts test
