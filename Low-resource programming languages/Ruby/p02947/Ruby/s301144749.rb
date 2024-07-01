n = gets.chomp.to_i
h = Hash.new
count = 0

n.times do
	s = gets.chomp.to_s.split(//).sort.join
	if h.key?(s)
		h[s] += 1
		count += h[s]
	else
		h[s] = 0
	end
end

puts count
