n,m = gets.chomp.split.map(&:to_i)
ls = m.times.map{gets.chomp.split.map(&:to_i)}
ps = gets.chomp.split.map(&:to_i)

ans = 0
(2 ** n).times do |i|
	flag = true
	m.times do |j|
		cnt = 0
		ls[j].each_with_index do |s,k|
			next if k == 0
			if i[s-1] == 1
				cnt += 1
			end
		end

		if cnt % 2 != ps[j]
			flag = false
			break
		end

	end
	ans += 1 if flag
end

puts ans