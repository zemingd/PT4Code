x = gets.to_i
if x % 11 == 0
	puts x / 11 * 2
elsif x % 11 <= 6
	puts (x / 11 * 2) + 1
else
	puts (x / 11 * 2) + 2
end