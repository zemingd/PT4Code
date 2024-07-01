def msb(x) # returns 0-32
	return 0 if x == 0
	x |= x>>1
	x |= x>>2
	x |= x>>4
	x |= x>>8
	x |= x>>16
	x += 1
	return [
		31,  0, 22,  1, 28, 23, 18,  2, 29, 26, 24, 10, 19,  7,  3, 12,
		30, 21, 27, 17, 25,  9,  6, 11, 20, 16,  8,  5, 15,  4, 14, 13
	][((x*0x076be629)&0xFFFFFFFF) >> 27] + 1
end

N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

B = A.sort.reverse

MSB = [nil] * N
bottom = 0
ticket = 0
(0...N).each{|i|
	MSB[i] = msb(B[i])
	break if MSB[i] <= bottom
	ticket += MSB[i] - bottom
	while M < ticket
		bottom += 1
		ticket -= i+1
	end
}

C = B.map.with_index{|b, i|
	(MSB[i]||0) <= bottom ? b : b>>(MSB[i]-bottom)
}
(0...(MSB.index(nil)||N)).sort_by{|i| -C[i] }.take(M-ticket).each{|i|
	C[i] >>= 1
} if ticket < M

p C.inject(&:+)
