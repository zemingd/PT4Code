while gets
	n = $_.to_i
	cnt = 0
	("0000".."9999").each{|i|
		cnt += 1 if i[0].to_i + i[1].to_i + i[2].to_i + i[3].to_i == n
	}
	p cnt
end