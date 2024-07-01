N = gets.to_i
withdraw = 0	# 引き落としの回数
exponent = 6	# 指数

while N > 5
	t = N / 9**exponent
	if t > 0
		N -= t *9 **exponent
		withdraw += t
	end

	u = N / 6**exponent
	if u > 0
		N -= u *6 **exponent
		withdraw += u
	end

	exponent -= 1
end

print N + withdraw