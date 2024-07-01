X = gets.to_i
a = b = -1
５ = []
while 0
	a += 1
	a5 = a**5
	５[a] = a5
	if b = ５.bsearch_index{|b5| a5 <=> b5+X }
		break
	end
	if b = ５.bsearch_index{|b5| X <=> b5+a5 }
		b = -b
		break
	end
end
puts"#{a} #{b}"
