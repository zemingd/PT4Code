def test
	d = gets.to_i
	return "Christmas" if d == 25
	return "Christmas Eve" if d == 24
	return "Christmas Eve Eve" if d == 23
	return "Christmas Eve Eve Eve" if d == 22
end

puts test
