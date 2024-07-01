n = gets().to_i
aibi = []
n.times{|i|
	aibi[i] = gets().split(' ').map(&:to_i)
}

aibi.sort_by!{|a|
	a[1]
}

tm = 0
result = true
aibi.each{|a|
	ai = a[0]
	bi = a[1]

	tm += ai
	if tm > bi
		result = false
		break
	end
}

puts (result ? "Yes" : "No")
