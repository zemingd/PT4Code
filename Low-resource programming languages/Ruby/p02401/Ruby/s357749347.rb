require 'scanf'

while true
	a,op,b = gets.scanf("%d %s %d")

	case op
	when '+'
		result = a + b;
	when '-'
		result = a - b;
	when '*'
		result = a * b;
	when '/'
		result = a / b;
	else
		break
	end

	puts result

end