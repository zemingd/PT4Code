n = gets.to_i
arr = gets.split(' ')
b = []
arr.each do |a|
	b.reverse!
	b.unshift(a)
end
s = ""
b.each do |a|
	s += a
	s += " "
end
puts s