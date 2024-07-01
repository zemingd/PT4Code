n, k = gets.split
d = gets.split

n.length.times do |i|
	while d.include?(n[i])
		n[i] = n[i].next
	end
end

print n
