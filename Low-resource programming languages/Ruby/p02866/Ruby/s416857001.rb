n = gets.to_i
ds = gets.split.map &:to_i

if ds[0] != 0 || ds.count{ |x| x == 0} != 1 then
	puts 0
	exit
end

sum = 1

dss = ds[1..-1].group_by{|x| x}

dss.keys.sort.each_cons(2){ |x|
	if x[0] + 1 != x[1] then
		puts 0
		exit
	end
	
	sum = sum * (dss[x[0]].size ** dss[x[1]].size) % 998244353
}

puts sum