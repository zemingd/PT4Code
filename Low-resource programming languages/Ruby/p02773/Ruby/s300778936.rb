n,k = gets.chomp.split(' ').map(&:to_i)
a = readlines.map(&:chomp)

au = a.uniq
count = 0
ans = []
ans2 = []

au.size.times.each {|c|
	a.size.times {|i|
		if au[c] == a[i]
          count += 1
        end
	}

ans << count
count = 0
}

ans2 = ans.each_index.inject([]){ |r, l| ans.max == ans[l] ? r << l : r }

ans2.sort!.reverse!
ans2.each do |li|
	puts au[li]	
end