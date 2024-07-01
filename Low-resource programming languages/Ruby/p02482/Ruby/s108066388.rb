def compare_array(a)
	case
	when a[0] > a[1]
		" > "
	when a[0].equal?(a[1])
		" == "
	else
		" < "
	end
end
a = gets.strip.split(' ').map {|i| i.to_i}
print a[0].to_s + compare_array(a) + a[1].to_s