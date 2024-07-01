number=gets.chomp.split(" ").map(&:to_i)
if (number[1]/number[0]>=number[2])
	p number[2]
else
	p number[1]/number[0]
end