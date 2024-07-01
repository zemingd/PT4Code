while line=gets
	num=line.split(" ").map(&:to_i)
	puts((num[0]+num[1]).to_s.size)
end