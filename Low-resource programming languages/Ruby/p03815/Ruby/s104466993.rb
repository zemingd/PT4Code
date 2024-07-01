x = gets.to_i
if x%11 == 0
	p x/11 * 2
elsif x%11 <= 6
	p x/11 * 2 + 1
else
	p x/11 * 2 + 2
end