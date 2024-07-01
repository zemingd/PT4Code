X = gets.to_i
ai = bi = nil
５ = []
10000.times{|n|
	５[ai=５.size] = a = n**5
	# 0 <= a; 0 <= b
	if bi = ５.bsearch_index{|b| b+X <=> a }
		break
	end
	# a < 0; b < 0
	if bi = ５.bsearch_index{|b| a+X <=> b }
		ai, bi = -ai, -bi
		break
	end
	# 0 <= a; b < 0
	if bi = ５.bsearch_index{|b| X-a <=> b }
		bi = -bi
		break
	end
	# a < 0; 0 <= b
	if bi = ５.bsearch_index{|b| b <=> X-a }
		ai = -ai
		break
	end
}
puts"#{ai} #{bi}"
