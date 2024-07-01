n = gets.to_i
h = gets.split.map &:to_i

max = 0
count = 0

(0...h.size - 1).each{ |i|
	if h[i] >= h[i+1] then
		count += 1
	else
		if count > max then
			max = count
		end
		count = 0
	end
}

if count > max then
	max = count
end

puts max
