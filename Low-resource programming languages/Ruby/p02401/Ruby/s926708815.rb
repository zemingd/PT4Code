def array_integer(a)
	0.upto(a.count) {|x|
		a[x] = a[x].to_i
	}
	return a
end

eof = false

until eof do
	a,op,b = STDIN.gets.split(" ")
	a,b = array_integer([a,b])

	if op == "?" then
		eof = true
		break
	end

	num =	case
				when op == "+" then a + b
				when op == "-" then a - b
				when op == "*" then a * b
				when op == "/" then a / b
			end
	puts num
end
