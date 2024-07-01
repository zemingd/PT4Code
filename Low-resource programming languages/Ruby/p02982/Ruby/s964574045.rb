n, d = gets.split.map(&:to_i)
a = n.times.map {gets.split.map(&:to_i)}
cnt = 0
a.combination(2).to_a.each do |e|
	e = e.transpose
	e.map!{|i| (i[0] - i[1]) ** 2}
	sum = e.inject(:+) ** 0.5
	if sum.to_s.include?(".0") && (sum.to_s.length == 3 || sum.to_s.length == 4)
		cnt += 1
	end
end
puts cnt
