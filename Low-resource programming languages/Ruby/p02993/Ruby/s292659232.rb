s = gets.chomp.split("")

old = ''
is_bad = false

s.each{ |x|
	if old == x then
		is_bad = true
	end
	old = x
}

puts is_bad ? 'Bad' : 'Good'
