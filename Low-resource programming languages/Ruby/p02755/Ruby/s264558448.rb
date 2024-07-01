a,b = gets.chomp.split(' ').map(&:to_i)
ans = -1

(1..100).each do |i|
	if (i*0.08).floor == a
		if (i*0.1).floor == b
		ans = i
		break
	end
	end
end

puts ans