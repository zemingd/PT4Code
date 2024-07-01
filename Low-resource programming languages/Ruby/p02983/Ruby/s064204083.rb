def abc133c
	l,r = gets.chomp.split(/\s/).map{|x| x.to_i}

	min = l*r
    for i in l..r-1
        mod = 0
		for j in i+1..r
			mod = (i*j)%2019
			min = [min, mod].sort[0]
			break if mod == 0
		end
        break if mod == 0
	end
	puts min
end

abc133c