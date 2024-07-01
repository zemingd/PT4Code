a,b = gets.split.map &:to_i

def tax8(x)
	(x * 0.08).floor
end

def tax10(x)
	(x * 0.1).floor
end

x_a1 = (a / 0.085).floor
x_a2 = (a / 0.075).ceil

(x_a1 .. x_a2).each{ |y|
	if tax8(y) == a && tax10(y) == b then
		puts y
		exit
	end
}

puts -1