a = STDIN.gets.to_i
b = STDIN.gets.to_i
if a >= 1 && a <= 100 && b >= 1 && b <= 100 
	return ((a + b) + 2.0 - 1) / b
end