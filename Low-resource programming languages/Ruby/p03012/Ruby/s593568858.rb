n = gets.to_i
ws = gets.split.map(&:to_i)
w_ave = ws.inject(&:+)/2
sum = 0
index = 0
ws.each_with_index do |w,i|
	sum += w
	if sum > w_ave
		index = i
		break
	end
end
ans = ws[index..-1].inject(&:+) - ws[0...index].inject(&:+)
if ws[index] < ans
	ans = ws[index]*2 - ans
end
puts ans