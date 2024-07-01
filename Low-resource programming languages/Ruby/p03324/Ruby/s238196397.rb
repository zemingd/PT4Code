x = gets.split.map(&:to_i)
if(x[1] < 100)then
	puts 100 ** x[0] * x[1]
else
	puts 100 ** x[0] * 101
end
