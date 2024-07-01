def function(a, b, c)
	(a == b && a != c) || (b == c && b != a) || (c == a && c != b)
end

a, b, c = gets.chomp.split
puts function(a, b, c) ? 'Yes' : 'No'
