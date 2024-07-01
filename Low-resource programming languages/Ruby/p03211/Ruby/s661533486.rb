#754
s = gets.split('').map(&:to_i)
ans = []
(s.size - 3).times do |i|
	x = 0
	vessel = []
	vessel << s[i]
	vessel << s[i + 1]
	vessel << s[i + 2]
	x = vessel.join.to_i

	ans << (753 - x).abs
end

puts ans.min