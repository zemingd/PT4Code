n = gets.to_i
h = gets.split.map(&:to_i)

ans = 1
(1..h.size - 1).each do |i|
	i.times do |j|
		unless h[j] <= h[i]
			ans -= 1
			break
		end
	end
  ans += 1
end

puts ans
