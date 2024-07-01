like = 753; s = gets; arr = []
(s.length - 3).times do |i|
		arr[i] = (s[i] + s[i+1] + s[i+2]).to_i
end
num = 0
arr.each do |i|
	if (like-i).abs < (like-num).abs
		num = i
	end
end
puts (like-num).abs

