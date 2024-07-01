n = gets.chomp.split("")
op = ['+', '-']
for i in 0..1
	for j in 0..1
		for k in 0..1
			s = n[0] + op[i] + n[1] + op[j] + n[2] + op[k] + n[3]
			if eval(s) == 7
				puts s + '=7'
				exit
			end
		end
	end
end

