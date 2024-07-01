n = gets.to_i
arr = gets.split(' ')
b = []
arr.each do |a|
	b << a
	b.reverse!
end
s = ""
b.each do |a|
	s += a
	s += " "
end
puts s