n, k = gets().split().map(&:to_i)
dislike = gets().split().map(&:to_i)

d = Array.new(10){false}
0.upto(k - 1) do |i|
	d[dislike[i]] = true
end

ok = false
s = ""
n.upto(n*10) do |i|
	ok = true
	s = i.to_s
	0.upto(s.length - 1) do |j|
		if d[s[j].to_i]
			ok = false
			break
		end
	end
	break if ok
end

puts s