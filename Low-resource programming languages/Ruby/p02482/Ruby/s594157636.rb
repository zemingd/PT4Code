def compare_array(a)
	case
	when a[0] > a[1]
		">"
	when a[0].equal?(a[1])
		"=="
	else
		"<"
	end
end
a = gets.strip.split(' ').map {|i| i.to_i}
print 'a ' + compare_array(a) + ' b'