nab=gets.chomp.split(" ").map(&:to_i)
if(nab[1]*nab[0]>nab[2])
	p nab[2]
else
	p (nab[0]*nab[1])
end