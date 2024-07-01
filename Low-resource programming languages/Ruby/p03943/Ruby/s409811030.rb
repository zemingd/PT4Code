S = gets.split("")

c = 0

(S.length-1).times{|i|
	if S[i] != S[i+1]
		c += 1
	end
}

p c