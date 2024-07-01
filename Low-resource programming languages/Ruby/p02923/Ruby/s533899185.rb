n = gets.to_i
h = gets.split.map(&:to_i)

h << 10 ** 10
ans = 0
s = 0
h.each_index do |i|
	next if i == 0
	if h[i] > h[i - 1]
		ans = [ans, i - s - 1].max
		s = i
	end
end

puts ans
