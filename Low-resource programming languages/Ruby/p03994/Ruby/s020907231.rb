s = gets.chomp
k = gets.to_i
(s.size-1).times{|i|
	toa = (?z.ord + 1 - s[i].ord) % 26
	if toa <= k
		print 'a'
		k -= toa
	else
		print s[i]
	end
}
puts ((s[-1].ord-?a.ord+k)%26 + ?a.ord).chr
