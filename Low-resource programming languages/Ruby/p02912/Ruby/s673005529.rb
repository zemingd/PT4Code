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

A.sort!.reverse!

MSB = []
bottom = 0
ticket = 0
(0...N).each{|i|
	MSB << msb(A[i])
	break if MSB.last < bottom
	ticket += MSB.last - bottom
	if M < ticket
		up = (ticket-M+i)/(i+1)
		bottom += up
		ticket -= up*(i+1)
	end
}
A.map!.with_index{|a, i|
	(MSB[i]||0) <= bottom ? a : a>>(MSB[i]-bottom)
}
MSB.size.times.sort_by{|i| -A[i] }.take(M-ticket).each{|i|
	A[i] >>= 1
} if ticket < M

p A.inject(&:+)
