A, B = gets.split(' ').map(&:to_i)
if (A + B) % 2 == 1
	puts 'IMPOSSIBLE'
else
	puts (A + B) / 2
end