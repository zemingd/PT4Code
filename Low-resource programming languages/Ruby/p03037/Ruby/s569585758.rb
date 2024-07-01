n,m = gets.split.map(&:to_i)
l = []
r = []
readlines.each do |item|
	temp = item.split.map(&:to_i)
	l << temp[0]
	r << temp[1]
end

result = r.min - l.max

puts result >= 0 ? result + 1 : 0