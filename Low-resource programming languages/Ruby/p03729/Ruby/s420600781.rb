n,t = gets.chomp.split(" ").map { |n| n.to_i }
ibanme = gets.chomp.split(" ").map { |n| n.to_i }
result = t
keizoku = 0
#p result
for i in 1..n-1
	if ibanme[i] >= ibanme[i-1] + t
		if keizoku != 0
			result += (t + keizoku)
			keizoku = 0
		else
			result += t
		end
#		p result
	else
		keizoku = ibanme[i] - ibanme[i-1]
#		p keizoku
	end
end
if keizoku != 0
	result += keizoku
end
puts result
