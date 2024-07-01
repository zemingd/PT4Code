s = gets.chomp
t = gets.chomp
c = 0
3.times do |i|
	c += １ if s[i] == t[i]
end
puts c