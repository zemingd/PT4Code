def cut_a( a )
	i = 0
#	p a
	while i < a.length-1
		if a[i] != a[i+1] then
			a.slice!(i, 2)
		end
		i = i + 1
#		print "i=#{i},len=#{a.length}\n"
#		p a
	end
#	p "cut_a end"
	a
end

s=gets.strip.split("")
i=s.length
#p i
begin
	before = s.length
	s = cut_a(s)
#	p s
	after = s.length
end while after < before 
p i-s.length
