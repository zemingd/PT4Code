n = gets.to_i
d = gets.chomp.split.map(&:to_i)

count = d[0]
res = 0

d.each do |i|
	if count >= i
		res += 1
		count = i
	end
	break if count == 1
end

puts res