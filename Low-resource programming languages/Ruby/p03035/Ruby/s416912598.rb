i = gets.split.map(&:to_i)

if i[0] <= 5
	puts 0
elsif i[0] <= 12 && i[0] >= 6
	puts i[1] / 2
else
	puts i[1]
end 