gets
cnt = {}
gets.split.each do |x| 
	x = x.to_i
	
	cnt[x] += 1 if cnt[x]
	cnt[x] = 1 if !cnt[x]
	
	cnt[x - 1] += 1 if cnt[x - 1]
	cnt[x - 1] = 1 if !cnt[x - 1]
	
	cnt[x + 1] += 1 if cnt[x + 1]
	cnt[x + 1] = 1 if !cnt[x + 1]
end

p cnt.values.max