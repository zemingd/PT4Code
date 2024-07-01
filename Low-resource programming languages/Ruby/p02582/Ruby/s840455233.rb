s = gets.split("")
#p s
ans = 0
s.length.times{ |i|
	if s[i]== 'R'
		ans += 1
	end
}
if s[1] == 'S' and ans == 2
	ans = 1
end
puts ans