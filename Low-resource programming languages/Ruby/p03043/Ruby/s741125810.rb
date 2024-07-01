N, K = gets.chomp.split.map(&:to_i)

result = 0

(1..N).each do |i|
	d = 1.0 / N

	now = i

	while now < K
		now *= 2
		d /= 2
	end
	result += d
end
puts result