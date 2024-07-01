A,B = gets.split.map(&:to_i)
minA = (A*100+7)/8
minB = (B*100+9)/10
ubA = ((A+1)*100+7)/8
ubB = ((B+1)*100+9)/10
#p [minA,ubA,minB,ubB]
if ubA <= minA or ubB <= minB
	p(-1)
elsif minA == minB
	p minA
elsif minA < minB and minB < ubA
	p minB
elsif minB < minA and minA < ubB
	p minA
else
	p(-1)
end
