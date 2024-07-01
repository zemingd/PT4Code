$n = gets.to_i

def test(s)
	return 0 if s.to_i > $n
	cnt = %w(7 5 3).all?{|w| s.count(w) > 0} ? 1 : 0
	%w(7 5 3).each{|w| cnt += test(s + w)}
	cnt
end

puts test("")
