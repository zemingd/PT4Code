cnt = {0 => 3, -1 => 5}
gets
gets.split.each do |x|
	x = x.to_i
	cnt[x] += 1 if cnt[x]
	cnt[x] = 1 if !cnt[x]
end
cnt.delete_if{|k, v| v < 2}
ans = cnt.keys.sort
p ans[-1] * ans[-2]