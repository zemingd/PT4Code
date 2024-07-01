s = gets.chomp.split("")
t = gets.chomp.split("")
c = 0
s.length.times do |i|
	c += 1 if s[i] == t[i]
end
puts c