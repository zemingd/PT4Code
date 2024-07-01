N, = gets.split
D = gets.split.map(&:to_i)

digits = ([*0..9]-D).sort
nz = digits[0]!=0 ? digits[0] : digits[1]

borrow = N.size-2-(N.each_char.reverse_each.with_index.inject(nil){|borrow, ci|
	n, i = ci[0].ord-'0'.ord, ci[1]
	m = digits.find{|d| borrow==i-1 ? n<d : n<=d }
	next m.nil? ? i : borrow
}||-2)
over = false
p N.each_char.with_index.inject(borrow==-1?nz:0){|a,ci|
	n, i = ci[0].ord-'0'.ord, ci[1]
	m = over ? digits[0] : digits.find{|d| borrow == i ? n<d : n<=d }
	over ||= n<m
	next a*10 + m
}
