n, m = gets.split.map { |i| i.to_i }
d = m.times.map{|time| gets.split.map { |i| i.to_i } << time}
d << [10000000,10000000,10000000]
d.sort!

arr_all = []
j = 0
n.times do |i|
	arr = []
	while d[j][0] == i+1
		arr << d[j]
		j += 1
	end
	arr_all << arr 
end

ans = []
n.times do |i|
	arr_all[i].size.times do |j|
		ans << [(i+1).to_s.rjust(6, "0") + (j+1).to_s.rjust(6, "0"), arr_all[i][j][2]]
	end
end

ans.sort_by!{|val, index| index}

m.times do |i|
	puts ans[i][0]
end
