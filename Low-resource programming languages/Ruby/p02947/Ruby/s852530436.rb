n = gets().to_i
sn = []
n.times{|i|
	sn.push(gets().chomp.split("").sort.join(""))
}

ans = 0
for i in 0 ... (sn.length - 1)
	for j in (i + 1) ... sn.length
		ans += 1 if sn[i] == sn[j]
	end
end

puts ans
