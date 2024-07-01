s = gets.chomp
k = gets.to_i
s.size.times{|i|
	toa = (?z.ord + 1 - s[i].ord) % 26
	if toa <= k
		s[i] = 'a'
		k -= toa
	end
}
s[-1] = ((s[-1].ord-?a.ord+k)%26 + ?a.ord).chr
puts s
