n = gets.to_i
as = gets.split.map &:to_i

m = {}

as.each_with_index{ |a, i|
	if m[a] == nil then
		m[a] = []
	end
	
	m[a] << i
}

ind = -1

res = -1

(1..n).each{ |i|
	if m[i] != nil then
		c_ind = m[i].index{ |x| x > ind } 
		if c_ind != nil then
			ind = m[i][c_ind]
		else
			res = i
			break
		end
	else
		res = i
		break
	end
}

if res == -1 then
	puts 0
elsif res == 1 then
	puts -1
else
	puts n - res + 1
end
