mountain = Array.new
while line = gets do
	a = line.split
	sum = a[0].to_i + a[1].to_i
	puts sum.to_s.size
end