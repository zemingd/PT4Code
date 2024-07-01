def dfs(i,s,l)
	if(i==l)
		return true
	elsif(i>l)
		return false
	end
	flg = false
	if(s[i..(i+4)]=="dream")
		flg = flg || dfs(i+5,s,l)
	end
	if(s[i..(i+6)]=="dreamer")
		flg = flg || dfs(i+7,s,l)
	end
	if(s[i..(i+4)]=="erase")
		flg = flg || dfs(i+5,s,l)
	end
	if(s[i..(i+5)]=="eraser")
		flg = flg || dfs(i+6,s,l)
	end
	if(flg)
		return true
	else
		return false
	end
end
S = gets.chomp
if(dfs(0,S,S.size))
	puts "YES"
else
	puts "NO"
end
