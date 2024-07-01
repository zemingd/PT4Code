x = gets.split.map(&:to_i)
if(x[0] == 100)then
	puts (x[1] + 1) 100 ** x[0]
else
	puts 100 ** x[0] * x[1]
end