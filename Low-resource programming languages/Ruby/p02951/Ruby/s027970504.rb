A, B, C = gets.split(' ').map(&:to_i)
if B + C <= A
	puts 0
else
	puts C - (A - B)
end